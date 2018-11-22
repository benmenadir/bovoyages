package com.bovoyages.caddy;

import java.util.ArrayList;
import java.util.List;

import com.bovoyages.metier.Voyage;

public class Caddy {
	
	private List<Voyage> voyages =new ArrayList<>();
	
	public List<Voyage> getVoyages(){
		return voyages;
	}
	
	public void add(Voyage voyage){
		voyages.add(voyage);
	}
	
	public double getPrixHT(){
		double total=0;
		for(Voyage voyage : voyages)
			total+=voyage.getPrixHT();
		
		return total;
	}
	
	public void remove(int index){
		voyages.remove(index);
	}
	
	public void clear(){
		voyages.clear();
	}

	public Voyage getVoyage(int index) {
		return voyages.get(index);
	}
}
