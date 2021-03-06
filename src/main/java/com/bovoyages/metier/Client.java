package com.bovoyages.metier;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name="clients")
public class Client {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="pk_client")
	private long id;
	@Column(name="nom")
	private String nom;
	
	public Client() {}
	
	public Client(String nom) {
		this.nom = nom;
	}
	public long getId() {
		return id;
	}
	/**
	 * ID de synchronisation avec la clé primaire
	 * <h3>Ne doit pas être mis à jour en dehors du DAO</h3>
	 * @param id
	 */
	public void setId(long id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	
}
