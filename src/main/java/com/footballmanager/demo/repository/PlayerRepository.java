package com.footballmanager.demo.repository;

import org.springframework.stereotype.Repository;
import com.footballmanager.demo.model.Player;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Long> {
    List<Player> findByTeamId(Long teamId);
    List<Player> findByTeamIdAndIsInFirstElevenTrue(Long teamId);
}
