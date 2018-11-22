package com.bovoyages.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bovoyages.metier.DatesVoyage;

@Repository
public interface IDatesVoyageRepository extends JpaRepository<DatesVoyage, Long> {
	@Query
	public List<DatesVoyage> findDatesVoyageByEtatTrue();
	public DatesVoyage findDatesVoyageByEtatTrueAndId(long id);
}
