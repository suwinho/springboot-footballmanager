package com.footballmanager.demo.model;

import lombok.*;
import jakarta.persistence.*;
import java.util.List;


@Entity
@Table(name = "teams")
@Getter 
@Setter 
@NoArgsConstructor
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private Long budget; 

    @OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
    private List<Player> players; 
}