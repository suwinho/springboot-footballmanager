package com.footballmanager.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.SeasonHistoryRepository;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.repository.TransferOfferRepository;
import com.footballmanager.demo.repository.YouthPlayerRepository;

import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

import org.springframework.transaction.annotation.Transactional;

import com.footballmanager.demo.repository.GameStateRepository;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.repository.NewsRepository;
import com.footballmanager.demo.model.GameState;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.SeasonHistory;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.TransferOffer;
import com.footballmanager.demo.model.YouthPlayer;
import com.footballmanager.demo.model.News;

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
    private final NewsRepository newsRepository;
    private final YouthPlayerRepository youthPlayerRepository;

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
        List<Player> allPlayers = playerRepository.findAll();
        for (Player p : allPlayers) {
            if (p.getStamina() < 100) {
                int recovery = p.isInFirstEleven() ? 5 : 12; 
                int newStamina = Math.min(100, p.getStamina() + recovery);
                p.setStamina(newStamina);
            }
        }
        if (gameState.getGameDate().getDayOfWeek().getValue() == 7) {
            developPlayers();
        }
        if (gameState.getGameDate().getDayOfMonth() == 1) {
            generateYouthPlayers();
        }
        simulateAITransfers();
        handleInjuries();
        playerRepository.saveAllAndFlush(allPlayers);
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

        Team myTeam = gameStateRepository.findById(1L).get().getUserTeam();
        List<Team> otherTeams = teamRepository.findAll().stream().filter(t -> !t.getId().equals(myTeam.getId())).toList();

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
        addNews("TRANSFER: " + player.getLastName() + " przenosi się do " + buyer.getName() + "!", "TRANSFER");
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
        offer.setActive(false); 
        offerRepository.save(offer);
    }

    @Transactional
    public void addNews(String content, String type) {
        GameState state = gameStateRepository.findById(1L).get();
        newsRepository.save(News.builder()
            .content(content)
            .type(type)
            .date(state.getGameDate())
            .build());
    }

    @Transactional
    public void developPlayers() {
        List<Player> allPlayers = playerRepository.findAll();
        Random rand = new Random();
        Team myTeam = gameStateRepository.findById(1L).get().getUserTeam();
        Long myTeamId = (myTeam != null) ? myTeam.getId() : -1L;

        for (Player p : allPlayers) {
            if (p.getOverall() < p.getPotential()) {           
                double baseGrowthChance = (38 - p.getAge()) * 0.006; 
                double difficultyMultiplier = (100.0 - p.getOverall()) / 100.0;
                double finalChance = baseGrowthChance * difficultyMultiplier;            
                if (rand.nextDouble() < finalChance) {
                    p.setOverall(p.getOverall() + 1);
                    if (p.getTeam() != null && p.getTeam().getId().equals(myTeamId)) {
                        addNews("TRENING: " + p.getLastName() + " wygląda świetnie! (+1 OVR)", "TRAINING");
                    }
                    if (p.getOffensiveStats() > p.getDefensiveStats()) {
                        p.setOffensiveStats(p.getOffensiveStats() + 1);
                    } else {
                        p.setDefensiveStats(p.getDefensiveStats() + 1);
                    }                
                    p.setMarketValue(p.getMarketValue() + 2000000);
                }
            } else if (p.getAge() > 33 && rand.nextDouble() < 0.1) {
                p.setOverall(Math.max(40, p.getOverall() - 1));
                p.setMarketValue(Math.max(100000, p.getMarketValue() - 1000000));
            }
        }
        playerRepository.saveAll(allPlayers);
    }

    @Transactional
    public void simulateAITransfers() {
        Random rand = new Random();
        if (rand.nextDouble() > 0.2) return;
        Team myTeam = gameStateRepository.findById(1L).get().getUserTeam();
        Long myTeamId = (myTeam != null) ? myTeam.getId() : -1L;
        List<Team> aiTeams = teamRepository.findAll().stream()
                .filter(t -> !t.getId().equals(myTeamId))
                .toList();

        if (aiTeams.size() < 2) return;
        Team buyer = aiTeams.get(rand.nextInt(aiTeams.size()));
        Team seller = aiTeams.get(rand.nextInt(aiTeams.size()));
        if (buyer.equals(seller)) return;
        List<Player> availablePlayers = seller.getPlayers().stream()
                .filter(p -> !p.isInFirstEleven())
                .toList();

        if (availablePlayers.isEmpty()) return;
        Player player = availablePlayers.get(rand.nextInt(availablePlayers.size()));
        long price = player.getMarketValue();
        if (buyer.getBudget() >= price && seller.getPlayers().size() > 14) {
            buyer.setBudget(buyer.getBudget() - price);
            seller.setBudget(seller.getBudget() + price);
            player.setTeam(buyer);

            playerRepository.save(player);
            teamRepository.save(buyer);
            teamRepository.save(seller);
            addNews("BREAKING: " + buyer.getName() + " kupuje " + player.getLastName() + 
                    " od " + seller.getName() + " za " + 
                    price + " €!", "TRANSFER");
        }
    }

    @Transactional
    public void handleInjuries() {
        List<Player> allPlayers = playerRepository.findAll();
        Random rand = new Random();
        Team myTeam = gameStateRepository.findById(1L).get().getUserTeam();
        Long myTeamId = (myTeam != null) ? myTeam.getId() : -1L;

        for (Player p : allPlayers) {
            if (p.getInjuryDays() > 0) {
                p.setInjuryDays(p.getInjuryDays() - 1);
                if (p.getInjuryDays() == 0 && p.getTeam().getId().equals(myTeamId)) {
                    addNews("MEDYK: " + p.getLastName() + " wrócił do treningów po kontuzji.", "INFO");
                }
                continue;
            }
            double injuryChance = 0.002;
            if (p.getStamina() < 70) injuryChance = 0.01;
            if (p.getStamina() < 40) injuryChance = 0.05;
            if (rand.nextDouble() < injuryChance) {
                int duration = rand.nextInt(14) + 3; 
                p.setInjuryDays(duration);
                p.setStamina(Math.max(0, p.getStamina() - 20));

                if (p.getTeam() != null && p.getTeam().getId().equals(myTeamId)) {
                    addNews("KONTUZJA: " + p.getLastName() + " wypada z gry na " + duration + " dni!", "WARNING");
                }
            }
        }
        playerRepository.saveAll(allPlayers);
    }

    @Transactional
    public void generateYouthPlayers() {
        Random rand = new Random();
        List<String> firstNames = playerRepository.findAll().stream().map(Player :: getFirstName).distinct().toList();
        List<String> lastNames = playerRepository.findAll().stream().map(Player :: getLastName).distinct().toList();

        for (int i = 0; i < 6; i++) {
            int ovr = rand.nextInt(10) + 45;
            int pot = rand.nextInt(25) + 70;
            YouthPlayer youth = YouthPlayer.builder()
                .firstName(firstNames.get(rand.nextInt(firstNames.size())))
                .lastName(lastNames.get(rand.nextInt(lastNames.size())))
                .age(16)
                .overall(ovr)
                .potential(pot)
                .marketValue(250000) 
                .offensiveStats(ovr + rand.nextInt(10))
                .deffensiveStats(ovr - rand.nextInt(10))
                .build();
            youthPlayerRepository.save(youth);
        } 
        addNews("RYNEK: Skauci przybyli z nowymi młodzikami!", "YOUTH");
    }

    @Transactional
    public String signYouthPlayer(Long youthId) {
        Team myTeam = gameStateRepository.findById(1L).get().getUserTeam();
        YouthPlayer youth = youthPlayerRepository.findById(youthId).orElseThrow();
        if (myTeam.getBudget() < youth.getMarketValue()) {
            return "Brak funduszy na kontrakt!";
        }

        Player newPlayer = new Player();
        newPlayer.setFirstName(youth.getFirstName());
        newPlayer.setLastName(youth.getLastName());
        newPlayer.setAge(youth.getAge());
        newPlayer.setOverall(youth.getOverall());
        newPlayer.setPotential(youth.getPotential());
        newPlayer.setMarketValue(1000000);
        newPlayer.setStamina(100);
        newPlayer.setTeam(myTeam);
        newPlayer.setInFirstEleven(false);
        newPlayer.setOffensiveStats(youth.getOffensiveStats());
        newPlayer.setDefensiveStats(youth.getDeffensiveStats());
        newPlayer.setInjuryDays(0);

        myTeam.setBudget(myTeam.getBudget() - youth.getMarketValue());

        playerRepository.save(newPlayer);
        youthPlayerRepository.delete(youth); 

        addNews("TRANSFER: " + newPlayer.getLastName() + " podpisał swój pierwszy profesjonalny kontrakt!", "INFO");
        return "Success";
    }

}
