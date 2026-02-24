package com.footballmanager.demo.model;

import jakarta.persistence.ManyToOne;
import lombok.*;

@Getter @Setter @AllArgsConstructor @NoArgsConstructor
public class MatchEvent{
    private int minute;
    private String type;
    private String description;
    private String teamName;
    private String playerName;

}