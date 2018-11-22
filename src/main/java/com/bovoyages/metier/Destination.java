package com.bovoyages.metier;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="destinations")
public class Destination implements Serializable {


	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue (strategy=GenerationType.IDENTITY)
	@Column(name="pk_destination")
	private long id;
	private String region;
	private String description;
	private String idcity;
	

	@ElementCollection(fetch=FetchType.EAGER)
	@CollectionTable(name="images", joinColumns=@JoinColumn(name="fk_destination"))
	@Column(name="image")
	private List<String> images;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="fk_destination")
	private List<DatesVoyage> datesVoyages = new ArrayList<>();
	private boolean etat;
	
	public Destination() {}
	
	public Destination(String region, String description) {
		this.region = region;
		this.description = description;
	}

	
	public Destination(String region, String description, String idcity) {
		super();
		this.region = region;
		this.description = description;
		this.idcity = idcity;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public void addDatesVoyage(DatesVoyage dates) {
		datesVoyages.add(dates);
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public List<DatesVoyage> getDatesVoyages() {
		return datesVoyages;
	}

	public void setDatesVoyages(List<DatesVoyage> datesVoyages) {
		this.datesVoyages = datesVoyages;
	}
	
	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public void setEtat(boolean b) {
		this.etat=b;
		
	}
	
	public boolean getEtat() {
		return etat;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (etat ? 1231 : 1237);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Destination other = (Destination) obj;
		if (etat != other.etat)
			return false;
		return true;
	}

	public String getIdcity() {
		return idcity;
	}

	public void setIdcity(String idcity) {
		this.idcity = idcity;
	}
	public double getPrixMinimum() {
		if(datesVoyages!=null) {
			double prix = datesVoyages.get(0).getPrixHT();
			for(DatesVoyage dv : datesVoyages) {
				if(dv.getPrixHT()<prix);
			}
			return prix;
		}
		return 0;
	}
	public String getVignette() {
		return images.get(0);
	}
	
}
