package com.footballmanager.demo.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import lombok.*;

@Entity
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class GameState {
    @Id
    private long id = 1L;
    private LocalDate gameDate;
    private int currentWeek;
}