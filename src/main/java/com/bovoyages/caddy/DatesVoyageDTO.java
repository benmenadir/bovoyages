package com.bovoyages.caddy;

import java.io.Serializable;
import java.util.Date;

import com.bovoyages.metier.DatesVoyage;



public class DatesVoyageDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private long id;
	private Date aller;
	private Date retour;
	private double prixHT;
	
	
	public DatesVoyageDTO(DatesVoyage datesVoyage) {
		id = datesVoyage.getId();
		aller = datesVoyage.getDateAller(); 
		retour = datesVoyage.getDateRetour();
		prixHT = datesVoyage.getPrixHT();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getAller() {
		return aller;
	}
	public void setAller(Date aller) {
		this.aller = aller;
	}
	public Date getRetour() {
		return retour;
	}
	public void setRetour(Date retour) {
		this.retour = retour;
	}
	public double getPrixHT() {
		return prixHT;
	}
	public void setPrixHT(double prixHT) {
		this.prixHT = prixHT;
	}
	
}
