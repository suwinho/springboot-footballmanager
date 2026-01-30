package com.footballmanager.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Team;

public interface LeagueRepository extends JpaRepository<LeagueTable, Long> {
    LeagueTable findByTeam(Team team);

    @Query("SELECT l FROM LeagueTable l ORDER BY l.points DESC, (l.goalsScored - l.goalsConceded) DESC")
    List<LeagueTable> findAllOrderByPoints();
}