package com.footballmanager.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.repository.TeamRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ViewController {

    private final TeamRepository teamRepository;

    @GetMapping("/dashboard/{teamId}")
    public String getDashboard(@PathVariable("teamId") Long teamId, Model model) {
        Team team = teamRepository.findById(teamId)
            .orElseThrow(() -> new RuntimeException("XD Klub nie istnieje"));
        
        model.addAttribute("team", team);
        model.addAttribute("players", team.getPlayers());
        return "dashboard"; 
    }

    @GetMapping("/main") 
    public String getMain() {
        return "index";
    }

    
}