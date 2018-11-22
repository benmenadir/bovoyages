package com.bovoyages.metier;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name = "dates_voyages")
public class DatesVoyage implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pk_date_voyage")
	private long id;
	@Temporal(TemporalType.DATE)
	@Column(name = "date_depart")
	private Date dateAller;
	@Temporal(TemporalType.DATE)
	@Column(name = "date_retour")
	private Date dateRetour;
	
	
	private double prixHT;

	private boolean etat;

	public DatesVoyage() {
	}

	public DatesVoyage(Date dateAller, Date dateRetour, double prixHT) {
		this.dateAller = dateAller;
		this.dateRetour = dateRetour;
		this.prixHT = prixHT;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getDateAller() {
		return dateAller;
	}

	public void setDateAller(Date dateAller) {
		this.dateAller = dateAller;
	}

	public Date getDateRetour() {
		return dateRetour;
	}

	public void setDateRetour(Date dateRetour) {
		this.dateRetour = dateRetour;
	}

	public double getPrixHT() {
		return prixHT;
	}

	public void setPrixHT(double prixHT) {
		this.prixHT = prixHT;
	}

	public boolean getEtat() {
		
		return etat;
	}

	public void setEtat(boolean etat) {
		
		this.etat=etat;
	}

}
