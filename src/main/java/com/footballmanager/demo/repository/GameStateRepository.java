package com.footballmanager.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.footballmanager.demo.model.GameState;

public interface GameStateRepository extends JpaRepository<GameState, Long> {

}