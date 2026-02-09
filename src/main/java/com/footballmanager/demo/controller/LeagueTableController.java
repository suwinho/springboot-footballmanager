package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Team;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.service.CarrerService;

import lombok.RequiredArgsConstructor;



@Controller
@RequiredArgsConstructor
public class LeagueTableController {
    @Autowired
    private LeagueRepository leagueRepository;
    @Autowired
    private final CarrerService carrerService;
    private final MatchRepository matchRepository;
    private final GameStateRepository gameStateRepository;

    @GetMapping("/table") 
    public String showTable(Model model) {
        List<LeagueTable> table = leagueRepository.findAllOrderByPoints();
        Team userTeam = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
        model.addAttribute("leagueTable", table);
        model.addAttribute("userTeamId", userTeam.getId());
        return "league";
    }

    @PostMapping("/generate-season")
    public String generateSeason() {
        GameState state = gameStateRepository.findById(1L).orElseThrow();
        int currentYear = state.getGameDate().getYear();
        carrerService.archiveSeason(currentYear);
        matchRepository.deleteAll();
        carrerService.resetLeagueStats();
        carrerService.generateSeasonSchedule();
        return "redirect:/";
    }

}