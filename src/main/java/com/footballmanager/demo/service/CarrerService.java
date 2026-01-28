package com.footballmanager.demo.service;
import org.springframework.stereotype.Service;
import com.footballmanager.demo.repository.PlayerRepository;
import com.footballmanager.demo.repository.TeamRepository;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.Team;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CarrerService {
    private final TeamRepository teamRepository;
    private final PlayerRepository playerRepository;
    private final MatchRepository matchRepository;

    @Transactional 
    public void transferPlayer(Long playerID, Long targetTeamID) {
        Player player = playerRepository.findById(playerID).orElseThrow(() -> new RuntimeException("Nie znaleziono piłkarza o id: " + playerID));
        Team targetTeam = teamRepository.findById(targetTeamID).orElseThrow(() -> new RuntimeException("Nie znaleziono drużyny o id: " + targetTeamID));

        long price = player.getOverall() * 100000;

        if (targetTeam.getBudget() >= price) {
            targetTeam.setBudget(targetTeam.getBudget() - price);
            player.setTeam(targetTeam);
            playerRepository.save(player);
            teamRepository.save(targetTeam);
        }
    }
}
