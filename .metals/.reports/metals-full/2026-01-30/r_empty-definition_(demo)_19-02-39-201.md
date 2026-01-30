error id: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java:com/footballmanager/demo/service/TeamService#max#
file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java
empty definition using pc, found symbol in pc: com/footballmanager/demo/service/TeamService#max#
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 1627
uri: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java
text:
```scala
package com.footballmanager.demo.service;

import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.Team;

import org.springframework.stereotype.Service;

import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.TeamRepository;

import java.util.Comparator;
import java.util.List;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TeamService {
    private final PlayerRepository playerRepository;
    private final TeamRepository teamRepository;

    @Transactional
    public void updateSquad(Long teamId, List<Long> starterIds) {
        List<Player> allPlayers = playerRepository.findByTeamId(teamId);

        for (Player p : allPlayers ) {
            p.setInFirstEleven(starterIds.contains(p.getId()));
        }
        playerRepository.saveAll(allPlayers);
    }

    public void makeSquadComplete(Long teamdId) {
        Team team = teamRepository.findById(teamdId).orElseThrow();
        double offensiveStats = team.getPlayers().stream()
            .filter(p -> p.isInFirstEleven()) 
            .mapToDouble(p -> p.getOffensiveStats())
            .average()
            .orElse(0.0);
        double defensiveStats = team.getPlayers().stream()
            .filter(p -> p.isInFirstEleven()) 
            .mapToDouble(p -> p.getDefensiveStats())
            .average()
            .orElse(0.0);

        if (defensiveStats > offensiveStats) {
            team.getPlayers().stream().filter(p -> !p.isInFirstEleven())..@@max(Comparator.comparingInt(Player::getOffensiveStats)).get();
        }
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: com/footballmanager/demo/service/TeamService#max#