package com.bovoyages;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.bovoyages.metier.Client;
import com.bovoyages.metier.DatesVoyage;
import com.bovoyages.metier.Destination;
import com.bovoyages.metier.Voyage;
import com.bovoyages.metier.Voyageur;
import com.bovoyages.service.IDatesVoyageService;
import com.bovoyages.service.IDestinationService;
import com.bovoyages.service.IVoyageService;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

@Controller
public class DestinationController {
	// private static final Logger logger =
	// LoggerFactory.getLogger(DestinationController.class);

	@Autowired
	private IDestinationService serviceDest;

	@Autowired
	private IDatesVoyageService serviceDate;

	@Autowired
	private IVoyageService serviceVoy;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("destinat", new Destination());
		model.addAttribute("destinations", serviceDest.getAllDestinations());
		return "frontClient/show_all_destinations";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("destinat", new Destination());
		model.addAttribute("destinations", serviceDest.getAllDestinations());
		return "frontClient/show_all_destinations";
	}

	@RequestMapping(value = "/search")
	public String search(Destination destinat, BindingResult bindingResult, Model model) {
		model.addAttribute("destinat", new Destination());
		if (destinat.getRegion().isEmpty() || bindingResult.hasErrors()
				|| serviceDest.getDestinationsByRegion(destinat.getRegion()).isEmpty()) {
			model.addAttribute("destinations", serviceDest.getAllDestinations());
			return "redirect: index";
		}
		model.addAttribute("destinations", serviceDest.getDestinationsByRegion(destinat.getRegion()));
		return "frontClient/show_all_destinations";
	}

	@RequestMapping(value = "/detailDestination", method = RequestMethod.GET)
	public String detailDestination(@RequestParam long id, Model model) {
		model.addAttribute("destination", serviceDest.getDestinationById(id));
		return "frontClient/show_detail_destinations";
	}

	@RequestMapping(value = "/showCommande")
	public String showCommande(@RequestParam("idDest") long idDest, @RequestParam("idDate") long idDate,
			ModelMap model) {
		Destination destination = serviceDest.getDestinationById(idDest);
		model.addAttribute("destination", destination);
		model.addAttribute("datesVoyage", serviceDate.getDatesVoyageById(destination.getId()));
		return "frontClient/show_commande";
	}

	@RequestMapping(value = "/recapitulatifCommande")
	public String recapitulatifCommande(@RequestParam("idDest") long idDest, @RequestParam("idDate") long idDate,
			@RequestParam("nbVoyageurs") int nbVoyageurs, @RequestParam("nomClient") String nomClient,
			@RequestParam("prixTot") double prixTot, HttpServletRequest request, HttpServletResponse response,
			ModelMap model) {

		Voyage voyage = new Voyage();
		List<Voyageur> voyageurs = new ArrayList<>();

		for (int i = 1; i <= nbVoyageurs; i++) {
			Voyageur voyageur = new Voyageur();
			String civilite = request.getParameter("civilite" + i);
			String nom = request.getParameter("nom" + i);
			String prenom = request.getParameter("prenom" + i);
			String dateDeNaissanceStr = request.getParameter("dateDeNaissance" + i);
			Date dateDeNaissance = Date.valueOf(dateDeNaissanceStr);
			voyageur.setCivilite(civilite);
			voyageur.setDateNaissance(dateDeNaissance);
			voyageur.setNom(nom);
			voyageur.setPrenom(prenom);
			voyageurs.add(voyageur);
		}
		voyage.setVoyageurs(voyageurs);

		Client client = new Client(nomClient);

		Destination destination = serviceDest.getDestinationById(idDest);
		DatesVoyage datesVoyage = serviceDate.getDatesVoyageById(idDate);
		voyage.setDatesVoyage(datesVoyage);
		voyage.setClient(client);
		voyage.setDescriptif(destination.getDescription());
		voyage.setRegion(destination.getRegion());

		serviceVoy.save(voyage);

		model.addAttribute("destination", destination);
		model.addAttribute("datesVoyage", datesVoyage);
		model.addAttribute("prixTot", prixTot);
		model.addAttribute("voyage", serviceVoy.getVoyageByLastId());
		model.addAttribute("client", client);

		return "frontClient/show_recapitulatif";
	}

}
