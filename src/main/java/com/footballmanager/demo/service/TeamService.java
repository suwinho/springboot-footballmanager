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
}