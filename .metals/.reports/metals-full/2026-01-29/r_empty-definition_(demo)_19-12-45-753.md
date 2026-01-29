file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/controller/SquadController.java
empty definition using pc, found symbol in pc: 
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 806
uri: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/controller/SquadController.java
text:
```scala
package com.footballmanager.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;
import com.footballmanager.demo.model.Team;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.repository.TeamRepository;
import com.footballmanager.demo.service.TeamService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SquadController {
    private final TeamRepository teamRepository;
    private final TeamService@@ teamService;

    @GetMapping("/lineup/{teamId}")
    public String showLineupEditor(@PathVariable Long teamId, Model model) {
        Team team = teamRepository.findById(teamId).orElseThrow();

        List<Player> allPlayers = team.getPlayers();

        List<Player> starters = allPlayers.stream()
                .filter(p -> p.isInFirstEleven()) 
                .distinct()
                .toList();

        List<Player> reserves = allPlayers.stream()
                .filter(p -> !p.isInFirstEleven()) 
                .distinct()
                .toList();

        model.addAttribute("team", team);
        model.addAttribute("starters", starters);
        model.addAttribute("reserves", reserves);
        return "lineup";
    }
    @PostMapping("/lineup/{teamId}/save") 
    public String saveLineup(@PathVariable Long teamId, @RequestParam List<Long> starterIds) {
        teamService.updateSquad(teamId, starterIds);
        return "redirect:/dashboard/" + teamId;
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: 