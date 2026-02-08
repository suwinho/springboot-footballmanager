package com.footballmanager.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.footballmanager.demo.model.YouthPlayer;

public interface YouthPlayerRepository extends JpaRepository<YouthPlayer, Long> {
    
}
