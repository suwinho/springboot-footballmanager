package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.MatchEvent;
import org.springframework.ui.Model;

import com.footballmanager.demo.service.CarrerService;
import com.footballmanager.demo.service.MatchService;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.repository.TeamRepository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List; 
@Controller
@RequiredArgsConstructor
public class MatchController {
    private final TeamRepository teamRepository;
    private final MatchService matchService;
    private final MatchRepository matchRepository;
    private final CarrerService carrerService;

    @GetMapping("/match/simulate/{homeId}/{awayId}")
    public String simulate(@PathVariable Long homeId, @PathVariable Long awayId, Model model) {
        Team home = teamRepository.findById(homeId).orElseThrow();
        Team away = teamRepository.findById(awayId).orElseThrow();
        
        List<MatchEvent> events = matchService.simulateMatch(home, away);
        int homeGoals = (int) events.stream()
            .filter(e -> "GOAL".equals(e.getType()) && e.getTeamName().equals(home.getName()))
            .count();
        int awayGoals = (int) events.stream()
            .filter(e -> "GOAL".equals(e.getType()) && e.getTeamName().equals(away.getName()))
            .count();
        
        Match matchInSchedule = matchRepository.findAll().stream()
            .filter(m -> m.getHomeTeam().getId().equals(homeId) 
                      && m.getAwayTeam().getId().equals(awayId) 
                      && !m.isPlayed())
            .findFirst()
            .orElse(null);

        if (matchInSchedule != null) {
            matchInSchedule.setHomeGoals(homeGoals);
            matchInSchedule.setAwayGoals(awayGoals);
            matchInSchedule.setPlayed(true);
            matchRepository.save(matchInSchedule);
        }

        model.addAttribute("homeTeam", home);
        model.addAttribute("awayTeam", away);
        model.addAttribute("homePlayers", home.getPlayers());
        model.addAttribute("awayPlayers", away.getPlayers());
        model.addAttribute("matchEvents", events);
        
        return "match";
    }
}