package com.bovoyages.service;

import java.util.List;

import com.bovoyages.metier.Voyage;

public interface IVoyageService {
	public void save(Voyage voyage);
	public void update(Voyage voyage);
	public void delete(long id);
	
	public List<Voyage> getAllVoyage();
	public Voyage getVoyageById(long id);
	public Voyage getVoyageByLastId();

}
