package com.footballmanager.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.footballmanager.demo.model.TransferOffer;

public interface TransferOfferRepository extends JpaRepository<TransferOffer, Long>{
    
}
