package com.bovoyages.service;

import java.util.List;

import com.bovoyages.metier.DatesVoyage;


public interface IDatesVoyageService {
	
	public void save(DatesVoyage datesVoyage);
	public void update(DatesVoyage datesVoyage);
	public void delete(long id);
	public List<DatesVoyage> getAllDatesVoyageWithNull();
	public List<DatesVoyage> getAllDatesVoyage();
	public DatesVoyage getDatesVoyageById(long id);

	
	
}
