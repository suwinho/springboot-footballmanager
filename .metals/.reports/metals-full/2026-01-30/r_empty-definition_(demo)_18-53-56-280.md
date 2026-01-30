error id: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java:_empty_/team#getPlayers#stream#filter#mapToDouble#average#orElse#
file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java
empty definition using pc, found symbol in pc: _empty_/team#getPlayers#stream#filter#mapToDouble#average#orElse#
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 1039
uri: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java
text:
```scala
package com.footballmanager.demo.service;

import com.footballmanager.demo.model.Player;
import org.springframework.stereotype.Service;

import com.footballmanager.demo.repository.PlayerRepository;
import java.util.List;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TeamService {
    private final PlayerRepository playerRepository;

    @Transactional
    public void updateSquad(Long teamId, List<Long> starterIds) {
        List<Player> allPlayers = playerRepository.findByTeamId(teamId);

        for (Player p : allPlayers ) {
            p.setInFirstEleven(starterIds.contains(p.getId()));
        }
        playerRepository.saveAll(allPlayers);
    }

    public void makeSquadComplete(Long teamdId) {
        return team.getPlayers().stream()
            .filter(p -> p.isInFirstEleven()) 
            .mapToDouble(p -> offensive ? p.getOffensiveStats() : p.getDefensiveStats())
            .average()
            .or@@Else(0.0);
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/team#getPlayers#stream#filter#mapToDouble#average#orElse#