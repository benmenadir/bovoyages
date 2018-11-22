package com.bovoyages.rest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import com.bovoyages.dao.IDestinationRepository;
import com.bovoyages.metier.Destination;

@RestController
@RequestMapping(value="/destinations")
public class DestinationRestService {
	@Autowired
	private IDestinationRepository dao;
	
	
	@GetMapping(value="id/{id}", produces = {"application/json"})
	public Destination getDestinationById(@PathVariable long id) {
		return dao.findOne(id);
	}

	
	@PostMapping(value="/add",produces = {"application/json"}, consumes = {"application/json"})
	public Destination save(Destination destination) {
		dao.save(destination);
		return destination;
	}
}
