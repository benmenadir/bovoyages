package com.bovoyages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bovoyages.dao.IClientRepository;
import com.bovoyages.metier.Client;
@Service("serviceClient")
public class ImpClientService implements IClientService {
	@Autowired
	private IClientRepository serviceCli;
	@Override
	public void save(Client client) {
		serviceCli.save(client);

	}

	@Override
	public void update(Client client) {
		serviceCli.save(client);

	}

	@Override
	public void delete(long id) {
		serviceCli.delete(id);

	}

	@Override
	public List<Client> getAllClient() {
		return serviceCli.findAll();
	}

	@Override
	public Client getClientById(long id) {
		return serviceCli.findOne(id);
	}

}
