package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.MatchEvent;
import org.springframework.ui.Model;
import com.footballmanager.demo.service.MatchService;
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

    @GetMapping("/match/simulate/{homeId}/{awayId}")
    public String simulate(@PathVariable Long homeId, @PathVariable Long awayId, Model model) {
        Team home = teamRepository.findById(homeId).orElseThrow();
        Team away = teamRepository.findById(awayId).orElseThrow();
        
        List<MatchEvent> events = matchService.simulateMatch(home, away);
        
        model.addAttribute("homeTeam", home);
        model.addAttribute("awayTeam", away);
        model.addAttribute("homePlayers", home.getPlayers());
        model.addAttribute("awayPlayers", away.getPlayers());
        model.addAttribute("matchEvents", events);
        
        return "match";
    }
}