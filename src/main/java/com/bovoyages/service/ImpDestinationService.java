package com.bovoyages.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bovoyages.dao.IDestinationRepository;
import com.bovoyages.metier.DatesVoyage;
import com.bovoyages.metier.Destination;

@Service("serviceDestination")
public class ImpDestinationService implements IDestinationService {

	@Autowired
	private IDestinationRepository daoDestiantion;
	@Override
	public void save(Destination d) {		
		daoDestiantion.save(d);
	}

	@Override
	public void update(Destination d) {
		daoDestiantion.save(d);

	}

	@Override
	public void delete(long id) {
		if(id != 0) {
			Destination destination=this.getDestinationById(id);
			if (destination.getEtat() == true) {
				destination.setEtat(false);
				daoDestiantion.save(destination);
			}			
		}
	}

	@Override
	public List<Destination> getAllDestinationsWithNull() {
		
		return daoDestiantion.findAll();
	}

	@Override
	public Destination getDestinationById(long id) {
		
		return this.getDestinationWithDatesTrue(daoDestiantion.findDestinationByEtatTrueAndId(id));
	}
	@Override
	public List<Destination> getAllDestinations(){
		return daoDestiantion.findDestinationByEtatTrue();				
	}

	@Override
	public List<Destination> getDestinationsByRegion(String region) {
		
		return daoDestiantion.findDestinationByEtatTrueAndRegion(region);
	}
	
	@Override
	public Destination getDestinationWithDatesTrue(Destination destination) {
		List<DatesVoyage> datesVoyages = new ArrayList<>();
		for (DatesVoyage datesVoyage : destination.getDatesVoyages()) {
			if (datesVoyage.getEtat() == true ) {
				datesVoyages.add(datesVoyage);
			
			}
		}
		destination.setDatesVoyages(datesVoyages);
		return destination;
	}

	@Override
	public List<Destination> getDestinationsDatesVoyages(List<Destination> destiantions) {
		
		for (Destination destination : destiantions) {
			
			destination = this.getDestinationWithDatesTrue(destination);
		}
		return destiantions;
	}
		
	

}
