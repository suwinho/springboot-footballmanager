package com.footballmanager.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.*;
import com.footballmanager.demo.model.Team;

@Entity
@Getter @Setter @NoArgsConstructor
public class SeasonHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "season_year")
    private int year;
    @ManyToOne
    private Team winner;
    @ManyToOne
    private Team runnerUp; 
    @ManyToOne
    private Team thirdPlace;
    private int winnerPoints;
}
