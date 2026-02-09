package com.footballmanager.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.PathVariable;

import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.repository.YouthPlayerRepository;
import com.footballmanager.demo.service.CarrerService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class YouthController {
    private final YouthPlayerRepository youthPlayerRepository;
    private final CarrerService carrerService;
    private final TeamRepository teamRepository;
    private final GameStateRepository gameStateRepository;

    @GetMapping("/youth-academy")
    public String getYouthMarket(Model model) {
        Team myTeam = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
        model.addAttribute("talents", youthPlayerRepository.findAll());
        model.addAttribute("team", myTeam);
        return "youth-academy";
    }

    @PostMapping("/youth/sign/{id}")
    public String signPlayer(@PathVariable Long id) {
        carrerService.signYouthPlayer(id);
        return "redirect:/youth-academy";
    }
    @PostMapping("/youth/upgrade")
    public String upgradeYouth(RedirectAttributes ra) {
    Team team = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
    long cost = team.getUpgradeCost();

    if (team.getBudget() >= cost && team.getYouthLevel() < 5) {
        team.setBudget(team.getBudget() - cost);
        team.setYouthLevel(team.getYouthLevel() + 1);
        teamRepository.save(team);
        carrerService.addNews("INFRASTRUKTURA: Akademia została ulepszona do poziomu " + team.getYouthLevel(), "INFO");
    } 
    return "redirect:/youth-academy";
}
}
