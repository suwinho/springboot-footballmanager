package com.footballmanager.demo.repository;

import com.footballmanager.demo.model.Match;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface MatchRepository extends JpaRepository<Match, Long> {

    List<Match> findByTeamHomeOrTeamAway(String teamHome, String teamAway);
    List<Match> findByDateBetween(LocalDateTime start, LocalDateTime end);
    List<Match> findByDateAfterOrderByDateAsc(LocalDateTime now);
}