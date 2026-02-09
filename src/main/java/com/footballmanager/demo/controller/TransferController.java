package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.Team;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.service.CarrerService;
import com.footballmanager.demo.service.TeamService;

import jakarta.transaction.Transactional;

import java.util.List;
import lombok.*;

@Controller
@RequiredArgsConstructor
public class TransferController {
    private final TeamRepository teamRepository;
    private final PlayerRepository playerRepository;
    private final CarrerService carrerService;
    private final TeamService teamService;
    private final GameStateRepository gameStateRepository;

    @GetMapping("/transfer") 
    public String showPlayersToTransfer(Model model) {
        Team myTeam = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
        List<Player> playersToShow = playerRepository.findAll().stream()
            .filter(p -> {
                if (p.getTeam() == null) return true;
                return !p.getTeam().getId().equals(myTeam.getId());
            })
            .toList();
        
        model.addAttribute("players", playersToShow);
        model.addAttribute("myTeam", myTeam);
        return "transfer";
    }

    @PostMapping("/transfer/buy")
    @Transactional
    public String makeTransfer(@RequestParam Long playerId) {
        Team myTeam = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
        Player player = playerRepository.findById(playerId).orElseThrow();
        Team team = player.getTeam();
        carrerService.transferPlayer(playerId, myTeam.getId());  
        teamService.makeSquadComplete(team.getId());
        return "redirect:/transfer";
    }
    
}