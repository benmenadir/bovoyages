package com.bovoyages.service;

import java.util.List;

import com.bovoyages.metier.Destination;

public interface IDestinationService {
	public void save(Destination d);
	public void update(Destination d);
	public void delete(long id);
	public List<Destination> getAllDestinationsWithNull();
	public List<Destination> getAllDestinations();
	public Destination getDestinationById(long id);
	public List<Destination> getDestinationsByRegion(String region);
	

	public Destination getDestinationWithDatesTrue(Destination destination);
	public List<Destination> getDestinationsDatesVoyages(List<Destination> destiantions);

}
