package com.footballmanager.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.SeasonHistoryRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.repository.TransferOfferRepository;

import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

import org.springframework.transaction.annotation.Transactional;

import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.SeasonHistory;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.TransferOffer;

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
    private final LeagueRepository leagueRepository;
    private final SeasonHistoryRepository seasonHistoryRepository;
    private final TransferOfferRepository offerRepository;
    private final TeamService teamService;

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
        GameState state = gameStateRepository.findById(1L).orElseThrow();
        state.setGameDate(startDate); 
        state.setCurrentWeek(1);      
        gameStateRepository.save(state);
    }
    private void createMatch(Team home, Team away, LocalDate date) {
        Match match = new Match();
        match.setHomeTeam(home);
        match.setAwayTeam(away);
        match.setDate(date);
        match.setPlayed(false);
        matchRepository.save(match);
    }

    public void resetLeagueStats() {
        List<LeagueTable> table = leagueRepository.findAll();
        for (LeagueTable entry : table) {
            entry.setPoints(0);
            entry.setWins(0);
            entry.setDraws(0);
            entry.setLosses(0);
            entry.setGoalsScored(0);
            entry.setGoalsConceded(0);
            entry.setMatchesPlayed(0);
        }
        leagueRepository.saveAll(table);

    }

    @Transactional
    public void archiveSeason(int year) {
        List<LeagueTable> topTeams = leagueRepository.findAll().stream().sorted(Comparator.comparingInt(LeagueTable::getPoints).reversed()).toList();

        if (topTeams.size() >= 3) {
            SeasonHistory history = new SeasonHistory();
            history.setYear(year);
            history.setWinner(topTeams.get(0).getTeam());
            history.setRunnerUp(topTeams.get(1).getTeam());
            history.setThirdPlace(topTeams.get(2).getTeam());
            history.setWinnerPoints(topTeams.get(0).getPoints());    
            seasonHistoryRepository.save(history);
        }
    }

    @Transactional
    public void generateIncomingOffer() {
        Random rand = new Random();
        if (rand.nextDouble() > 0.10) return;

        Team myTeam = teamRepository.findById(1L).orElseThrow();
        List<Team> otherTeams = teamRepository.findAll().stream().filter(t -> !t.getId().equals(1L)).toList();

        if (otherTeams.isEmpty() || myTeam.getPlayers().isEmpty()) return;

        Team buyer = otherTeams.get(rand.nextInt(otherTeams.size()));
        Player playerToBuy = myTeam.getPlayers().get(rand.nextInt(myTeam.getPlayers().size()));
        if (myTeam.getPlayers().size() <= 11) return;
        long offerPrice = (long) (playerToBuy.getMarketValue() * (0.9 + (1.2 - 0.9) * rand.nextDouble()));
        TransferOffer offer = new TransferOffer();
        offer.setPlayer(playerToBuy);
        offer.setBuyer(buyer);
        offer.setOfferPrice(offerPrice);
        offerRepository.save(offer);
    }

    @Transactional
    public void acceptOffer(Long offerId) {
        TransferOffer offer = offerRepository.findById(offerId).orElseThrow();
        if (!offer.isActive()) return;
        Player player = offer.getPlayer();
        Team seller = player.getTeam();
        Team buyer = offer.getBuyer();

        buyer.setBudget(buyer.getBudget() - offer.getOfferPrice());
        seller.setBudget(seller.getBudget() + offer.getOfferPrice());
        player.setTeam(buyer);

        offer.setActive(false); 
        teamService.makeSquadComplete(buyer.getId());
        playerRepository.save(player);
        teamRepository.save(buyer);
        teamRepository.save(seller);
        offerRepository.save(offer);
    }
    @Transactional
    public void rejectOffer(Long offerId) {
        TransferOffer offer = offerRepository.findById(offerId).orElseThrow();
        offer.setActive(false); // Oznaczamy jako nieaktywną
        offerRepository.save(offer);
    }

}
