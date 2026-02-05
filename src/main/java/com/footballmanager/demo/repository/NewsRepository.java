package com.footballmanager.demo.repository;

import com.footballmanager.demo.model.News;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NewsRepository extends JpaRepository<News, Long> {
    List<News> findTop10ByOrderByDateDescIdDesc();
}