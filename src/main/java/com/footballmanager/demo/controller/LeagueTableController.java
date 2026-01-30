package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.LeagueTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.service.CarrerService;

import lombok.RequiredArgsConstructor;



@Controller
@RequiredArgsConstructor
public class LeagueTableController {
    @Autowired
    private LeagueRepository leagueRepository;
    @Autowired
    private final CarrerService carrerService;

    @GetMapping("/table") 
    public String showTable(Model model) {
        List<LeagueTable> table = leagueRepository.findAllOrderByPoints();
        model.addAttribute("leagueTable", table);
        return "league";
    }

    @PostMapping("/generate-season")
    public String generateSeason() {
        carrerService.generateSeasonSchedule();
        return "redirect:/";
    }

}