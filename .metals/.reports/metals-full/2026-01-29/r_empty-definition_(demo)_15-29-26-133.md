error id: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java:com/footballmanager/demo/repository/PlayerRepository#findByTeamId#
file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/service/TeamService.java
empty definition using pc, found symbol in pc: com/footballmanager/demo/repository/PlayerRepository#findByTeamId#
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 579
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
        List<Player> allPlayers = playerRepository.findByTe@@amId(teamId);

        for (Player p : allPlayers ) {
            p.setInFirstSquad(starterIds.contains(p.getId()));
        }
        playerRepository.saveAll(allPlayers);
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: com/footballmanager/demo/repository/PlayerRepository#findByTeamId#