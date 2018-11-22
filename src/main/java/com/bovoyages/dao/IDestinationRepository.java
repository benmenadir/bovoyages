package com.bovoyages.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bovoyages.metier.Destination;




@Repository
public interface IDestinationRepository extends JpaRepository<Destination, Long> {

	@Query
	public List<Destination> findDestinationByEtatTrue();
	public Destination findDestinationByEtatTrueAndId(long id);
	public List<Destination> findDestinationByEtatTrueAndRegion(String region);
}
