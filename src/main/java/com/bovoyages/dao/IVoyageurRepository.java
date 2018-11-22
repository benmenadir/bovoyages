package com.bovoyages.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bovoyages.metier.Voyageur;


@Repository
public interface IVoyageurRepository extends JpaRepository<Voyageur, Long> {

}
