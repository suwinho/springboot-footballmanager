package com.footballmanager.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import com.footballmanager.demo.model.LeagueTable;
import com.footballmanager.demo.model.Team;

public interface LeagueRepository extends JpaRepository<LeagueTable, Long> {
    LeagueTable findByTeam(Team team);

    @Query("SELECT lt FROM LeagueTable lt JOIN FETCH lt.team " +
           "ORDER BY lt.points DESC, (lt.goalsScored - lt.goalsConceded) DESC, lt.goalsScored DESC")
    List<LeagueTable> findAllOrderByPoints();
}