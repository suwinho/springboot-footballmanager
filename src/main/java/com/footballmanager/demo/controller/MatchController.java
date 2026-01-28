package com.footballmanager.demo.controller;

import com.footballmanager.demo.model.Match;
import com.footballmanager.demo.service.MatchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List; 
@RestController
@RequestMapping("/api/matches")
@RequiredArgsConstructor
public class MatchController {
    
    private final MatchService matchService;

    @GetMapping
    public List<Match> getAllMatches() {
        return matchService.findAll();
    }

    @PostMapping
    public ResponseEntity<Match> schedule(@RequestBody Match match) {
        Match savedMatch = matchService.save(match);
        return ResponseEntity.ok(savedMatch);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Match> getMatchById(@PathVariable Long id) {
        return matchService.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}