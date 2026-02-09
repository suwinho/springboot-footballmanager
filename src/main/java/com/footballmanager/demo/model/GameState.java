package com.footballmanager.demo.model;

import java.time.LocalDate;

import org.hibernate.annotations.ManyToAny;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.*;

@Entity
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class GameState {
    @Id
    private long id = 1L;
    private LocalDate gameDate;
    private int currentWeek;

    @ManyToOne
    @JoinColumn(name = "user_team_id")
    private Team userTeam;
}