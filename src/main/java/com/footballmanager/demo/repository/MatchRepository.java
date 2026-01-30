package com.footballmanager.demo.repository;

import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.Team;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface MatchRepository extends JpaRepository<Match, Long> {

    List<Match> findByHomeTeamOrAwayTeam(Team homeTeam, Team awayTeam);
    List<Match> findByDate(LocalDate date);
    List<Match> findByDateAfterOrderByDateAsc(LocalDateTime now);
    @Query("SELECT m FROM Match m WHERE m.date >= :date ORDER BY m.date ASC")
    List<Match> findUpcomingMatches(@Param("date") LocalDate date);
}