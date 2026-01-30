package com.footballmanager.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.TeamRepository;

import java.time.LocalDate;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.Team;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CarrerService {
    @Autowired
    private final TeamRepository teamRepository;
    @Autowired
    private final PlayerRepository playerRepository;
    private final MatchRepository matchRepository;
    private final GameStateRepository gameStateRepository;

    @Transactional 
    public String transferPlayer(Long playerID, Long targetTeamID) {
        Player player = playerRepository.findById(playerID).orElseThrow(() -> new RuntimeException("Nie znaleziono piłkarza o id: " + playerID));
        Team targetTeam = teamRepository.findById(targetTeamID).orElseThrow(() -> new RuntimeException("Nie znaleziono drużyny o id: " + targetTeamID));
        Team seller = player.getTeam();

        long price = player.getMarketValue();

        if (seller.getPlayers().size() < 11) {
            return "Not enough players";
        }

        if (targetTeam.getBudget() >= price) {
            targetTeam.setBudget(targetTeam.getBudget() - price);
            seller.setBudget(seller.getBudget() + price);
            player.setTeam(targetTeam);
            playerRepository.save(player);
            teamRepository.save(targetTeam);
        }
        return "Success";
    }

    @Transactional
    public void advanceDay() {
        GameState gameState = gameStateRepository.findById(1L).get();
        gameState.setGameDate(gameState.getGameDate().plusDays(1));
        gameStateRepository.save(gameState);
    }

    @Transactional
    public void generateSeasonSchedule() {
        List<Team> teams = teamRepository.findAll();
        int numTeams = teams.size();
        int numRounds = numTeams - 1;
        LocalDate startDate = LocalDate.of(2026, 8, 1);
        for (int round = 0; round < numRounds; round++) {
            for (int i = 0; i < numTeams / 2; i++) {
                Team home = teams.get((round + i) % (numTeams - 1));
                Team away = teams.get((numTeams - 1 - i + round) % (numTeams - 1));
                if (i == 0) away = teams.get(numTeams - 1);
                createMatch(home, away, startDate.plusWeeks(round));
                createMatch(away, home, startDate.plusWeeks(round + numRounds));
            }
        }
    }
    private void createMatch(Team home, Team away, LocalDate date) {
        Match match = new Match();
        match.setHomeTeam(home);
        match.setAwayTeam(away);
        match.setDate(date);
        match.setPlayed(false);
        matchRepository.save(match);
    }

}
