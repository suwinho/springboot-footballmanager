error id: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/controller/MatchController.java:_empty_/TeamRepository#findById#orElseThrow#
file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/controller/MatchController.java
empty definition using pc, found symbol in pc: _empty_/TeamRepository#findById#orElseThrow#
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 689
uri: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/controller/MatchController.java
text:
```scala
package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.service.MatchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List; 
@Controller
@RequiredArgsConstructor
public class MatchController {
    private final TeamRepository teamRepository;
    private final MatchService matchService;

    @GetMapping("/match/simulate/{homeId}/{awayId}")
    public String simulate(@PathVariable Long homeId, @PathVariable Long awayId, Model model) {
        Team home = teamRepository.findById(homeId).o@@rElseThrow();
        Team away = teamRepository.findById(awayId).orElseThrow();
        
        List<MatchEvent> events = matchService.simulateMatch(home, away);
        
        model.addAttribute("homeTeam", home);
        model.addAttribute("awayTeam", away);
        model.addAttribute("homePlayers", home.getPlayers());
        model.addAttribute("awayPlayers", away.getPlayers());
        model.addAttribute("matchEvents", events);
        
        return "match"; // Plik match.html, który stworzyliśmy wcześniej
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/TeamRepository#findById#orElseThrow#