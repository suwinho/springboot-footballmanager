package com.footballmanager.demo.model;

import lombok.*;
import jakarta.persistence.*;

@Entity
@Table(name = "players")
@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
public class Player {
  
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    
    private String firstName;
    private String lastName;
    private int age;
    private int overall;
    private int offensiveStats;
    private int defensiveStats;
    private boolean isInFirstEleven;
    @Column(nullable = false, columnDefinition = "int default 0")
    private long marketValue = 0;
    @Column(name = "stamina")
    private int stamina = 100;
    @Column(name = "potential")
    private int potential;

    @ManyToOne
    @JoinColumn(name = "team_id")
    private Team team;
    @Column(name = "injury_days", nullable = true)
    private int injuryDays = 0;
    public boolean isInjured() {
        return injuryDays > 0;
    }
    @Column(nullable = false)
    @org.hibernate.annotations.ColumnDefault("70")
    private int morale = 70;
    @Column(nullable = false)
    @org.hibernate.annotations.ColumnDefault("50")
    private int sharpness = 50;
    @Column(nullable = false)
    @org.hibernate.annotations.ColumnDefault("100")
    private int happiness = 100;
    @Column(nullable = false, columnDefinition = "int default 0")
    private int apperances = 0;
}
