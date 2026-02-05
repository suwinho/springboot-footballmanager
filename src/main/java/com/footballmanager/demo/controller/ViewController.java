package com.footballmanager.demo.controller;

import java.time.LocalDate;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.data.domain.Sort;
import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.SeasonHistory;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.TransferOffer;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.repository.SeasonHistoryRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.repository.TransferOfferRepository;
import com.footballmanager.demo.service.CarrerService;
import com.footballmanager.demo.service.MatchService;

import java.util.List;
import java.util.Random;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ViewController {

    private final TeamRepository teamRepository;
    private final GameStateRepository gameStateRepository;
    private final LeagueRepository leagueRepository;
    private final MatchRepository matchRepository;
    private final MatchService matchService;
    private final SeasonHistoryRepository seasonHistoryRepository;
    private final CarrerService carrerService;
    private final TransferOfferRepository offerRepository;

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
        List<SeasonHistory> topHistory = seasonHistoryRepository.findAll(
            Sort.by(Sort.Direction.DESC, "year")
        ).stream().limit(3).toList();
        List<Match> upcomingMatches = matchRepository.findUpcomingMatches(state.getGameDate());
        List<TransferOffer> activeOffers = offerRepository.findAll().stream()
            .filter(o -> o.isActive() && o.getPlayer().getTeam().getId() == 1L)
            .toList();
        model.addAttribute("upcomingMatches",upcomingMatches);
        model.addAttribute("leagueTable", table);
        model.addAttribute("gameState", state);
        model.addAttribute("recentHistory", topHistory);
        model.addAttribute("activeOffers", activeOffers);
        return "index";
    }

    @PostMapping("/advance-day")
    @Transactional
    public String advanceDay() {
        GameState state = gameStateRepository.findById(1L)
            .orElseThrow(() -> new RuntimeException("GameState not found"));
        LocalDate currentDate = state.getGameDate();
        List<Match> todaysMatches = matchRepository.findByDate(currentDate);
        for (Match match : todaysMatches) {
            if (!match.isPlayed()) {
                int hG = new Random().nextInt(4);
                int aG = new Random().nextInt(4);
                match.setHomeGoals(hG);
                match.setAwayGoals(aG);
                match.setPlayed(true);
                matchService.updateLeagueTable(match.getHomeTeam(), match.getAwayTeam(), hG, aG);
            }
            match.setHomeGoals(new Random().nextInt(5));
            match.setAwayGoals(new Random().nextInt(5));
            match.setPlayed(true);
            matchRepository.save(match);
        }
        
        carrerService.advanceDay();
        carrerService.generateIncomingOffer();
        gameStateRepository.save(state);
        return "redirect:/";
    }

    @PostMapping("/accept-offer/{id}")
    public String acceptOffer(@PathVariable Long id) {
        carrerService.acceptOffer(id);
        return "redirect:/";
    }    

    @PostMapping("/reject-offer/{id}")
    public String rejectOffer(@PathVariable Long id) {
        carrerService.rejectOffer(id);
        return "redirect:/";
    }
}