package com.footballmanager.demo.controller;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.TeamRepository;
import java.util.List;
import java.util.Random;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ViewController {

    private final TeamRepository teamRepository;
    private final GameStateRepository gameStateRepository;
    private final LeagueRepository leagueRepository;

    @GetMapping("/dashboard/{teamId}")
    public String getDashboard(@PathVariable("teamId") Long teamId, Model model) {
        Team team = teamRepository.findById(teamId)
            .orElseThrow(() -> new RuntimeException("XD Klub nie istnieje"));
        
        model.addAttribute("team", team);
        model.addAttribute("players", team.getPlayers());
        return "dashboard"; 
    }

    @GetMapping("/") 
    public String getMain(Model model) {
        Team team = teamRepository.findById(1L).orElse(null);
        List<LeagueTable> table = leagueRepository.findAllOrderByPoints();
        if (team != null) {
            model.addAttribute("team", team);
            model.addAttribute("players", team.getPlayers());
        }
        GameState state = gameStateRepository.findById(1L).orElseGet(() -> {
        GameState newState = new GameState();
        newState.setGameDate(LocalDate.now());
        newState.setCurrentWeek(1);
        return gameStateRepository.save(newState);
        });
        model.addAttribute("leagueTable", table);
        model.addAttribute("gameState", state);
        return "index";
    }

    @PostMapping("/advance-day")
    @Transactional
    public String advanceDay() {
        GameState state = gameStateRepository.findById(1L)
            .orElseThrow(() -> new RuntimeException("GameState not found"));
        state.setGameDate(state.getGameDate().plusDays(1));
        gameStateRepository.save(state);
        return "redirect:/";
    }

    
}