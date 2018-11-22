package com.bovoyages.service;

import java.util.List;

import com.bovoyages.metier.Client;


public interface IClientService {
	public void save(Client client);
	public void update(Client client);
	public void delete(long id);
	public List<Client> getAllClient();
	public Client getClientById(long id);
}
