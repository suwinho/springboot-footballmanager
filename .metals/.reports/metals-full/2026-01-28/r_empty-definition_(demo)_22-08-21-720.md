error id: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/MatchService.java:_empty_/Player#
file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/MatchService.java
empty definition using pc, found symbol in pc: _empty_/Player#
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 2615
uri: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/MatchService.java
text:
```scala
package com.footballmanager.demo.service;

import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.model.Match;
import java.util.List;
import java.util.Optional;
import lombok.*;
import org.springframework.stereotype.Service;


@Service
public class MatchService {

    public List<MatchEvent> simulateMatch(Team home, Team away) {
        List<MatchEvent> events = new ArrayList<>();
        Random rand = new Random();

        // 1. Obliczamy siłę ogólną formacji
        double homeAttack = calculateFormationsStrength(home, true);
        double homeDefense = calculateFormationsStrength(home, false);
        double awayAttack = calculateFormationsStrength(away, true);
        double awayDefense = calculateFormationsStrength(away, false);

        int homeScore = 0;
        int awayScore = 0;

        for (int min = 1; min <= 90; min++) {
            // Szansa na "akcję kluczową" w tej minucie
            if (rand.nextDouble() < 0.15) { 
                
                // Decydujemy, która strona atakuje (Atak vs Obrona przeciwnika)
                if (rand.nextDouble() * (homeAttack + awayDefense) < homeAttack) {
                    // ATAK DOMOWY
                    MatchEvent result = resolveAction(home, away, min, rand);
                    if (result != null) {
                        events.add(result);
                        if (result.getType().equals("GOAL")) homeScore++;
                    }
                } else {
                    // ATAK GOŚCI
                    MatchEvent result = resolveAction(away, home, min, rand);
                    if (result != null) {
                        events.add(result);
                        if (result.getType().equals("GOAL")) awayScore++;
                    }
                }
            }
            
            // Losowe kartki (niezależne od statystyk ataku)
            if (rand.nextDouble() < 0.01) {
                Player p = away.getPlayers().get(rand.nextInt(away.getPlayers().size()));
                events.add(new MatchEvent(min, "YELLOW_CARD", "Brutalny faul!", away.getName(), p.getLastName()));
            }
        }
        return events;
    }

    private double calculateFormationsStrength(Team team, boolean offensive) {
        return team.getPlayers().stream()
                .mapToDouble(p -> offensive ? p.getOffensiveStats() : p.getDefensiveStats())
                .average().orElse(50.0);
    }

    private MatchEvent resolveAction(Team attacker, Team defender, int min, Random rand) {
        @@Player forward = attacker.getPlayers().stream().max(Comparator.comparingInt(Player::getOffensiveStats)).get();
        Player goalie = defender.getPlayers().stream().max(Comparator.comparingInt(Player::getDefensiveStats)).get();

        double scoringChance = (forward.getOffensiveStats() * 1.2) - (goalie.getDefensiveStats() * 0.8);
        double roll = rand.nextDouble() * 100;

        if (roll < scoringChance * 0.3) {
            return new MatchEvent(min, "GOAL", "Potężne uderzenie w okienko!", attacker.getName(), forward.getLastName());
        } else if (roll < scoringChance * 0.6) {
            return new MatchEvent(min, "SAVE", "Niesamowita parada bramkarza!", defender.getName(), goalie.getLastName());
        } else if (roll < 80) {
            return new MatchEvent(min, "MISS", "Strzał obok słupka!", attacker.getName(), forward.getLastName());
        }
        return null;
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/Player#