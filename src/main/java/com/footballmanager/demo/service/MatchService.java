package com.footballmanager.demo.service;

import com.footballmanager.demo.repository.MatchRepository;
import com.footballmanager.demo.model.Match;
import java.util.List;
import java.util.Optional;
import lombok.*;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class MatchService {
    private final MatchRepository matchRepository;

    public List<Match> findAll() {
        return matchRepository.findAll();
    }

    public Match save(Match match) {
        return matchRepository.save(match);
    }

    public Optional<Match> findById(Long id) {
        return matchRepository.findById(id);
    }
}