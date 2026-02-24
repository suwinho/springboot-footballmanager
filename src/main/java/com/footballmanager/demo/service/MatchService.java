package com.footballmanager.demo.service;


import com.footballmanager.demo.model.Player;
import java.util.Comparator;

import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.MatchEvent;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.repository.LeagueRepository;
import com.footballmanager.demo.repository.PlayerRepository;

import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.Random;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@RequiredArgsConstructor
public class MatchService {
    
    private final LeagueRepository leagueRepository;
    private final PlayerRepository playerRepository;

    @Transactional
    public List<MatchEvent> simulateMatch(Team home, Team away, String homeMentality) {
        List<MatchEvent> events = new ArrayList<>();
        Random rand = new Random();

        double defenseMod = 1.0;
        double cardChanceMod = 1.0;
        double staminaFatigueMod = 1.0;

        switch (homeMentality) {
            case "AGRESSIVE": 
                defenseMod = 1.30;   
                cardChanceMod = 2.5; 
                staminaFatigueMod = 1.5; 
                break;
            case "CALM": 
                defenseMod = 0.75;   
                cardChanceMod = 0.3; 
                staminaFatigueMod = 0.6; 
                break;
            default: 
                defenseMod = 1.0;
                cardChanceMod = 1.0;
                staminaFatigueMod = 1.0;
                break;
        }
        
        double homeAttack = calculateFormationsStrength(home, true);
        double homeDefense = calculateFormationsStrength(home, false) * defenseMod;
        double awayAttack = calculateFormationsStrength(away, true);
        double awayDefense = calculateFormationsStrength(away, false);

        int homeScore = 0;
        int awayScore = 0;

        for (int min = 1; min <= 90; min++) {
            if (rand.nextDouble() < 0.15) { 
                
                if (rand.nextDouble() * (homeAttack + awayDefense) < homeAttack) {
                    MatchEvent result = resolveAction(home, away, min, rand, 1.0);
                    if (result != null) {
                        events.add(result);
                        if (result.getType().equals("GOAL")) homeScore++;
                    }
                } else {
                    MatchEvent result = resolveAction(away, home, min, rand, defenseMod);
                    if (result != null) {
                        events.add(result);
                        if (result.getType().equals("GOAL")) awayScore++;
                    }
                }
            }
            
            double baseCardChance = 0.01;
            if (rand.nextDouble() < (baseCardChance * cardChanceMod)) {
                List<Player> starters = home.getPlayers().stream().filter(Player::isInFirstEleven).toList();
                if (!starters.isEmpty()) {
                    Player p = starters.get(rand.nextInt(starters.size()));
                    events.add(new MatchEvent(min, "YELLOW_CARD", "Faul!", home.getName(), p.getLastName()));
                }
            }

            if (rand.nextDouble() < 0.01) {
                List<Player> starters = away.getPlayers().stream().filter(Player::isInFirstEleven).toList();
                if (!starters.isEmpty()) {
                    Player p = starters.get(rand.nextInt(starters.size()));
                    events.add(new MatchEvent(min, "YELLOW_CARD", "Faul!", away.getName(), p.getLastName()));
                }
            }
        }
        boolean homeWin = homeScore > awayScore;
        boolean draw = homeScore == awayScore;

        updatePlayerPostMatch(home, homeScore, awayScore, homeWin, draw);
        updatePlayerPostMatch(away, awayScore, homeScore, !homeWin && !draw, draw);
        
        decreaseStaminaCustom(home.getPlayers(), staminaFatigueMod);
        decreaseStaminaCustom(away.getPlayers(), 1.0);
        updateLeagueTable(home, away, homeScore, awayScore);
        return events;
    }

    private double calculateFormationsStrength(Team team, boolean offensive) {
        return team.getPlayers().stream()
            .filter(p -> p.isInFirstEleven() && p.getInjuryDays() == 0) 
            .mapToDouble(p -> {
            double baseStat = offensive ? p.getOffensiveStats() : p.getDefensiveStats();
            double moraleBonus = 0.95 + (p.getSharpness() / 100 * 0.15);
            double sharpnessBonus = 0.85 + (p.getSharpness() / 100.0 * 0.15);
            double staminaMultiplier = (p.getStamina() + 100) / 200.0;
            return baseStat * staminaMultiplier * moraleBonus * sharpnessBonus;
        })
            .average()
            .orElse(0.0);
    }
    private MatchEvent resolveAction(Team attacker, Team defender, int min, Random rand, double defenseMod) {
        double teamAttackPower = calculateFormationsStrength(attacker, true);
        double teamDefensePower = calculateFormationsStrength(defender, false) * defenseMod;
        Player forward = attacker.getPlayers().stream()
            .filter(Player::isInFirstEleven)
            .max(Comparator.comparingInt(p -> p.getOffensiveStats() + rand.nextInt(20)))
            .orElse(attacker.getPlayers().get(0));

        Player goalie = defender.getPlayers().stream()
            .filter(Player::isInFirstEleven)
            .max(Comparator.comparingInt(Player::getDefensiveStats))
            .orElse(defender.getPlayers().get(0));

        double forwardStaminaMod = 0.7 + (forward.getStamina() / 100.0 * 0.3);
        double goalieStaminaMod = 0.7 + (goalie.getStamina() / 100.0 * 0.3);
        double finalAttack = teamAttackPower * 1.2 * forwardStaminaMod;
        double finalDefense = teamDefensePower * goalieStaminaMod;
        double scoringChance = finalAttack - finalDefense;
        scoringChance = Math.max(scoringChance, 5.0);
        double roll = rand.nextDouble() * 100;

        if (roll < scoringChance * 0.3) {
            return new MatchEvent(min, "GOAL", "GOOOLLLL!", attacker.getName(), forward.getLastName());
        } else if (roll < scoringChance * 0.6) {
            return new MatchEvent(min, "SAVE", "Bramkarz obronił", defender.getName(), goalie.getLastName());
        } else if (roll < 80) {
            return new MatchEvent(min, "MISS", "Niecelny strzał!", attacker.getName(), forward.getLastName());
        }
        return null;
    }

    public void updateLeagueTable(Team home, Team away, int homeGoals, int awayGoals) {
        LeagueTable homeEntry = leagueRepository.findByTeam(home);
        LeagueTable awayEntry = leagueRepository.findByTeam(away);

        if (homeEntry == null || awayEntry == null) return;

        homeEntry.setMatchesPlayed(homeEntry.getMatchesPlayed() + 1);
        awayEntry.setMatchesPlayed(awayEntry.getMatchesPlayed() + 1);
        homeEntry.setGoalsScored(homeEntry.getGoalsScored() + homeGoals);
        homeEntry.setGoalsConceded(homeEntry.getGoalsConceded() + awayGoals);
        awayEntry.setGoalsScored(awayEntry.getGoalsScored() + awayGoals);
        awayEntry.setGoalsConceded(awayEntry.getGoalsConceded() + homeGoals);

        if (homeGoals > awayGoals) {
            homeEntry.setWins(homeEntry.getWins() + 1);
            homeEntry.setPoints(homeEntry.getPoints() + 3);
            awayEntry.setLosses(awayEntry.getLosses() + 1);
        } else if (homeGoals < awayGoals) {
            awayEntry.setWins(awayEntry.getWins() + 1);
            awayEntry.setPoints(awayEntry.getPoints() + 3);
            homeEntry.setLosses(homeEntry.getLosses() + 1);
        } else {
            homeEntry.setDraws(homeEntry.getDraws() + 1);
            awayEntry.setDraws(awayEntry.getDraws() + 1);
            homeEntry.setPoints(homeEntry.getPoints() + 1);
            awayEntry.setPoints(awayEntry.getPoints() + 1);
        }
        leagueRepository.save(homeEntry);
        leagueRepository.save(awayEntry);
    }

    private void decreaseStamina(List<Player> players) {
        for (Player p : players) {
            if (p.isInFirstEleven()) {
                int fatigue = new Random().nextInt(11) + 10;
                p.setStamina(Math.max(0, p.getStamina() - fatigue));
                playerRepository.save(p);
            }
        }
    }

    public void simulateAiMatch(Match match) {
        Team home = match.getHomeTeam();
        Team away = match.getAwayTeam();
        double homeAttack = calculateFormationsStrength(home, true);
        double homeDefense = calculateFormationsStrength(home, false);
        double awayAttack = calculateFormationsStrength(away, true);
        double awayDefense = calculateFormationsStrength(away, false);

        homeAttack *= 1.05;
        homeDefense *= 1.05;
        int homeGoals = generateGoals(homeAttack, awayDefense);
        int awayGoals = generateGoals(awayAttack, homeDefense);
        match.setHomeGoals(homeGoals);
        match.setAwayGoals(awayGoals);
        match.setPlayed(true);

        updateLeagueTable(home, away, homeGoals, awayGoals);
    }

    private int generateGoals(double attack, double defense) {
        Random rand = new Random();
        double ratio = attack / defense;
        int goals = 0;

        for (int i = 0; i < 5; i++) {
            if (rand.nextDouble() < (0.2 * ratio)) {
                goals++;
            }
        }
        return goals;
    }

    public void updatePlayerPostMatch(Team team, int goalsScored, int goalsConceded, boolean isWinner, boolean isDraw) {
        for (Player p : team.getPlayers()) {
            if (p.isInFirstEleven()) {
                p.setSharpness(Math.min(100, p.getSharpness() + 10));
                if (isWinner) {
                    p.setMorale(Math.min(100, p.getMorale() + 5));
                    p.setHappiness(Math.min(100, p.getHappiness() + 5));
                } else if (isDraw) {
                    p.setMorale(Math.min(100, p.getMorale() + 2));
                } else {
                    p.setMorale(Math.max(0, p.getMorale() - 5));
                    p.setHappiness(Math.max(0, p.getHappiness() - 1));
                }
            } else {
                p.setSharpness(Math.max(0, p.getSharpness() - 4));
                if (p.getOverall() > 75) {
                    p.setHappiness(Math.max(0, p.getHappiness() - 3));
                }
            }
        }
        playerRepository.saveAll(team.getPlayers());
    }

    public double calculateCardChance(String tacticsMode) {
        return switch (tacticsMode) {
            case "AGRESSIVE" -> 0.03; 
            case "CALM" -> 0.005;     
            default -> 0.01;          
        };
    }
    public double getDefenseMultiplier(String tacticsMode) {
        return switch (tacticsMode) {
            case "AGRESSIVE" -> 1.2;  
            case "CALM" -> 0.8;       
            default -> 1.0;
        };
    }

    private void decreaseStaminaCustom(List<Player> players, double factor) {
        for (Player p : players) {
            if (p.isInFirstEleven()) {
                int baseFatigue = new Random().nextInt(11) + 10;
                int finalFatigue = (int) (baseFatigue * factor);
                p.setStamina(Math.max(0, p.getStamina() - finalFatigue));
                playerRepository.save(p);
            }
        }
    }
    
}