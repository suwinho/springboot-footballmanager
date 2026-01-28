package com.footballmanager.demo.repository;

import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.model.Team;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface MatchRepository extends JpaRepository<Match, Long> {

    List<Match> findByHomeTeamOrAwayTeam(Team homeTeam, Team awayTeam);

    List<Match> findByDateAfterOrderByDateAsc(LocalDateTime now);
}