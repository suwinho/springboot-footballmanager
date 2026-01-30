package com.footballmanager.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    private final TeamRepository teamRepository;
    @Autowired
    private final PlayerRepository playerRepository;
    private final MatchRepository matchRepository;

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
}
