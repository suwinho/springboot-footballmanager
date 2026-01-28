package com.footballmanager.demo.repository;

import org.springframework.stereotype.Repository;
import com.footballmanager.demo.model.Player;
import org.springframework.data.jpa.repository.JpaRepository;


@Repository
public interface PlayerRepository extends JpaRepository<Player, Long> {

}
