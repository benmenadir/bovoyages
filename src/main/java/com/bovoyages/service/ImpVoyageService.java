package com.bovoyages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bovoyages.dao.IVoyageRepository;
import com.bovoyages.metier.Voyage;

@Service ("serviceVoyage")
public class ImpVoyageService implements IVoyageService {
	@Autowired
	private IVoyageRepository serviceVoy;
	@Override
	public void save(Voyage voyage) {
		serviceVoy.save(voyage);
	}

	@Override
	public void update(Voyage voyage) {
		serviceVoy.save(voyage);

	}

	@Override
	public void delete(long id) {
		serviceVoy.delete(id);

	}

	@Override
	public List<Voyage> getAllVoyage() {
		return serviceVoy.findAll();
	}

	@Override
	public Voyage getVoyageById(long id) {
		return serviceVoy.findOne(id);
	}

	@Override
	public Voyage getVoyageByLastId() {
		
		return serviceVoy.findFirstByOrderByIdDesc();
	}

}
