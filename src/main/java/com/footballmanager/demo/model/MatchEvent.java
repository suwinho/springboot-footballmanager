package com.footballmanager.demo.model;

import lombok.*;

@Getter @Setter @AllArgsConstructor
public class MatchEvent{
    private int minute;
    private String type;
    private String description;
    private String teamName;
    private String playerName;
}