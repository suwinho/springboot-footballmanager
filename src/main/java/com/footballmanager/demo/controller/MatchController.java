package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.MatchEvent;
import org.springframework.ui.Model;

import com.footballmanager.demo.service.CarrerService;
import com.footballmanager.demo.service.MatchService;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.repository.TeamRepository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors; 
@Controller
@RequiredArgsConstructor
public class MatchController {
    private final TeamRepository teamRepository;
    private final MatchService matchService;
    private final MatchRepository matchRepository;
    private final CarrerService carrerService;
    private final GameStateRepository gameStateRepository;

    @GetMapping("/match/simulate/{homeId}/{awayId}")
    public String simulate(@PathVariable Long homeId, @PathVariable Long awayId, Model model) {
        Team home = teamRepository.findById(homeId).orElseThrow();
        Team away = teamRepository.findById(awayId).orElseThrow();
        Team userTeam = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
        
        
        if (!homeId.equals(userTeam.getId()) && !awayId.equals(userTeam.getId())) {
            return "redirect:/"; 
        }   
        List<MatchEvent> events = matchService.simulateMatch(home, away, "NEUTRAL");
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
        model.addAttribute("userTeamId", userTeam.getId());
        return "match";
    }
    @GetMapping("/api/match/check-minute")
    @ResponseBody
    public List<MatchEvent> generateTacticalMatch(
        @RequestParam int minute,
        @RequestParam String mentality, 
        @RequestParam Long homeId, 
        @RequestParam Long awayId) {
        
        Team home = teamRepository.findById(homeId).orElseThrow();
        Team away = teamRepository.findById(awayId).orElseThrow();
        
        return matchService.simulateSpecificMinute(home, away, minute, mentality);
    }

    @PostMapping("/api/match/finalize")
    @ResponseBody
    public String finalizeMatch(
            @RequestParam Long homeId, 
            @RequestParam Long awayId, 
            @RequestParam int homeScore, 
            @RequestParam int awayScore) {
            
        Team home = teamRepository.findById(homeId).orElseThrow();
        Team away = teamRepository.findById(awayId).orElseThrow();
            
        matchService.updateLeagueTable(home, away, homeScore, awayScore);
        matchService.updatePlayerPostMatch(home, homeScore, awayScore, homeScore > awayScore, homeScore == awayScore);
        matchService.updatePlayerPostMatch(away, awayScore, homeScore, awayScore > homeScore, homeScore == awayScore);
            
        return "Result Saved";
    }
}