package com.bovoyages.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bovoyages.metier.Voyage;

@Repository
public interface IVoyageRepository extends JpaRepository<Voyage, Long> {
	
	public Voyage findFirstByOrderByIdDesc();
}
