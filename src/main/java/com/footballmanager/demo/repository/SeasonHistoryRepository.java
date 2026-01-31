package com.footballmanager.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.footballmanager.demo.model.SeasonHistory;

public interface SeasonHistoryRepository extends JpaRepository<SeasonHistory, Long> {

    
}
