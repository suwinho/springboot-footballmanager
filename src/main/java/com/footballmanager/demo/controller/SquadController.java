package com.footballmanager.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.service.TeamService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SquadController {
    private final TeamRepository teamRepository;
    private final TeamService teamService;
    private final GameStateRepository gameStateRepository;

    @GetMapping("/lineup/{teamId}")
    public String showLineupEditor(@PathVariable Long teamId, Model model) {
        Team userTeam = gameStateRepository.findById(1L).orElseThrow().getUserTeam();
    
        if (!teamId.equals(userTeam.getId())) {
            return "redirect:/lineup/" + userTeam.getId();
        }

        Team team = teamRepository.findById(teamId).orElseThrow();

        List<Player> allPlayers = team.getPlayers();

        List<Player> starters = allPlayers.stream()
                .filter(p -> p.isInFirstEleven()) 
                .distinct()
                .toList();

        List<Player> reserves = allPlayers.stream()
                .filter(p -> !p.isInFirstEleven()) 
                .distinct()
                .toList();

        model.addAttribute("team", team);
        model.addAttribute("starters", starters);
        model.addAttribute("reserves", reserves);
        return "lineup";
    }
    @PostMapping("/lineup/{teamId}/save") 
    public String saveLineup(@PathVariable Long teamId, @RequestParam List<Long> starterIds) {
        teamService.updateSquad(teamId, starterIds);
        return "redirect:/dashboard/" + teamId;
    }
}