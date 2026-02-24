package com.footballmanager.demo.controller;

import java.time.LocalDate;
import java.util.ArrayList;
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
import com.footballmanager.demo.model.News;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.SeasonHistory;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.TransferOffer;
import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.repository.NewsRepository;
import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.SeasonHistoryRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.repository.TransferOfferRepository;
import com.footballmanager.demo.service.CarrerService;
import com.footballmanager.demo.service.MatchService;

import java.util.Collections;
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
    private final NewsRepository newsRepository;
    private final PlayerRepository playerRepository;

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
        GameState state = gameStateRepository.findById(1L).orElseGet(() -> {
            GameState newState = new GameState();
            newState.setGameDate(LocalDate.now());
            newState.setCurrentWeek(1);
            return gameStateRepository.save(newState);
        });

        if (state.getUserTeam() == null) {
            return "redirect:/select-team";
        }

        Team team = state.getUserTeam();
        List<LeagueTable> table = leagueRepository.findAllOrderByPoints();

        model.addAttribute("team", team);
        model.addAttribute("players", team.getPlayers());

        List<TransferOffer> activeOffers = offerRepository.findAll().stream()
            .filter(o -> o.isActive() && o.getPlayer().getTeam().getId().equals(team.getId()))
            .toList();
        List<SeasonHistory> topHistory = seasonHistoryRepository.findAll(
            Sort.by(Sort.Direction.DESC, "year")).stream().limit(3).toList();
        List<Match> upcomingMatches = matchRepository.findUpcomingMatches(state.getGameDate());
        List<News> newsFeed = newsRepository.findTop10ByOrderByDateDescIdDesc();

        GameState gameState = gameStateRepository.findById(1L).orElseThrow();
        Team userTeam = gameState.getUserTeam();
        List<Match> lastMatches = matchRepository.findAllPlayedByTeamId(userTeam.getId()).stream().toList();
        if (!lastMatches.isEmpty()) {
            double totalPoints = 0;
            for (Match m : lastMatches) {
                if (m.getHomeGoals() == m.getAwayGoals()) {
                    totalPoints += 1; 
                } else {
                    boolean isHome = m.getHomeTeam().getId().equals(team.getId());
                    boolean won = (isHome && m.getHomeGoals() > m.getAwayGoals()) || 
                                  (!isHome && m.getAwayGoals() > m.getHomeGoals());
                    if (won) totalPoints += 3;
                }
            }

            double averagePoints = totalPoints / lastMatches.size();
            if (averagePoints >= 2.0 && lastMatches.size() >= 3) {
                if (Math.random() < 0.3) { 
                    List<Team> otherTeams = teamRepository.findAll().stream()
                            .filter(t -> !t.getId().equals(team.getId()))
                            .toList();
                    
                    if (!otherTeams.isEmpty()) {
                        ArrayList<Team> shuffleList = new ArrayList<>(otherTeams);
                        Collections.shuffle(shuffleList);
                        Team jobOfferTeam = shuffleList.get(0);
                        model.addAttribute("jobOffer", jobOfferTeam);
                        model.addAttribute("offerPoints", totalPoints);
                    }
                }
            }
        }

        model.addAttribute("newsFeed", newsFeed);
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
                matchService.simulateAiMatch(match);
            }
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

    @GetMapping("/career/accept/{newTeamId}")
    public String acceptJob(@PathVariable Long newTeamId) {
        GameState gameState = gameStateRepository.findById(1L).orElseThrow();
        Team newTeam = teamRepository.findById(newTeamId).orElseThrow();

        gameState.setUserTeam(newTeam);
        gameStateRepository.save(gameState);

        return "redirect:/"; 
    }
}