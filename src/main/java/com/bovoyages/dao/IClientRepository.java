package com.bovoyages.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bovoyages.metier.Client;



@Repository
public interface IClientRepository extends JpaRepository<Client, Long> {

}
