package com.footballmanager.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.TeamRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SetupController {
    private final TeamRepository teamRepository;
    private final GameStateRepository gameStateRepository;

    @GetMapping("/select-team")
    public String showTeamSelection(Model model) {
        model.addAttribute("allTeams", teamRepository.findAll());
        return "select-team";
    }

    @PostMapping("/select-team/{id}")
    public String confirmSelection(@PathVariable Long id) {
        Team selected = teamRepository.findById(id).orElseThrow();
        GameState state = gameStateRepository.findById(1L).get();
        
        state.setUserTeam(selected);
        gameStateRepository.save(state);
        
        return "redirect:/"; 
    }
}