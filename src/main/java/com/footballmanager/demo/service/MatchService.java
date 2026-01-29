package com.footballmanager.demo.service;


import com.footballmanager.demo.model.Player;
import java.util.Comparator;
import com.footballmanager.demo.model.MatchEvent;
import com.footballmanager.demo.model.Team;
import java.util.ArrayList;
import java.util.Random;
import java.util.List;

import org.springframework.stereotype.Service;


@Service
public class MatchService {

    public List<MatchEvent> simulateMatch(Team home, Team away) {
        List<MatchEvent> events = new ArrayList<>();
        Random rand = new Random();

        double homeAttack = calculateFormationsStrength(home, true);
        double homeDefense = calculateFormationsStrength(home, false);
        double awayAttack = calculateFormationsStrength(away, true);
        double awayDefense = calculateFormationsStrength(away, false);

        int homeScore = 0;
        int awayScore = 0;

        for (int min = 1; min <= 90; min++) {
            if (rand.nextDouble() < 0.15) { 
                
                if (rand.nextDouble() * (homeAttack + awayDefense) < homeAttack) {
                    MatchEvent result = resolveAction(home, away, min, rand);
                    if (result != null) {
                        events.add(result);
                        if (result.getType().equals("GOAL")) homeScore++;
                    }
                } else {
                    MatchEvent result = resolveAction(away, home, min, rand);
                    if (result != null) {
                        events.add(result);
                        if (result.getType().equals("GOAL")) awayScore++;
                    }
                }
            }
            
            if (rand.nextDouble() < 0.01) {
                Player p = away.getPlayers().get(rand.nextInt(away.getPlayers().size()));
                events.add(new MatchEvent(min, "YELLOW_CARD", "Faul!", away.getName(), p.getLastName()));
            }
        }
        return events;
    }

    private double calculateFormationsStrength(Team team, boolean offensive) {
        return team.getPlayers().stream()
            .filter(p -> p.isInFirstEleven()) 
            .mapToDouble(p -> offensive ? p.getOffensiveStats() : p.getDefensiveStats())
            .average()
            .orElse(0.0);
    }
    private MatchEvent resolveAction(Team attacker, Team defender, int min, Random rand) {
        Player forward = attacker.getPlayers().stream().max(Comparator.comparingInt(Player::getOffensiveStats)).get();
        Player goalie = defender.getPlayers().stream().max(Comparator.comparingInt(Player::getDefensiveStats)).get();

        double scoringChance = (forward.getOffensiveStats() * 1.2) - (goalie.getDefensiveStats() * 0.8);
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
}