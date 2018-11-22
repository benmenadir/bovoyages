package com.bovoyages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bovoyages.dao.IDatesVoyageRepository;
import com.bovoyages.metier.DatesVoyage;

@Service("serviceDates")
public class ImpDatesVoyageService implements IDatesVoyageService {
	@Autowired
	private IDatesVoyageRepository daoDates;
	@Override
	public void save(DatesVoyage datesVoyage) {
		
		daoDates.save(datesVoyage);
	}

	@Override
	public void update(DatesVoyage datesVoyage) {
		daoDates.save(datesVoyage);
	}

	@Override
	public void delete(long id) {
		if(id != 0) {
			DatesVoyage datesVoyage=this.getDatesVoyageById(id);
			if (datesVoyage.getEtat() == true) {
				datesVoyage.setEtat(false);
				daoDates.save(datesVoyage);
			}			
		}

	}

	@Override
	public List<DatesVoyage> getAllDatesVoyageWithNull() {
		
		return daoDates.findAll();
	}

	@Override
	public List<DatesVoyage> getAllDatesVoyage() {
		
		return daoDates.findDatesVoyageByEtatTrue();
	}

	@Override
	public DatesVoyage getDatesVoyageById(long id) {
		
		return daoDates.findDatesVoyageByEtatTrueAndId(id);
	}

}
