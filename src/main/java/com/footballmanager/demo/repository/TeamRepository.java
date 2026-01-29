package com.footballmanager.demo.repository;

import org.springframework.stereotype.Repository;

import com.footballmanager.demo.model.Player;
import com.footballmanager.demo.model.Team;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


@Repository
public interface TeamRepository extends JpaRepository<Team, Long> {
    
    
}
