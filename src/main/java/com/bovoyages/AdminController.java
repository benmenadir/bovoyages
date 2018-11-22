package com.bovoyages;

import java.sql.Date;

import javax.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.bovoyages.metier.DatesVoyage;
import com.bovoyages.metier.Destination;
import com.bovoyages.service.IDatesVoyageService;
import com.bovoyages.service.IDestinationService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private IDestinationService serviceDest;
	@Autowired
	private IDatesVoyageService serviceDate;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String main(Model model) {
		model.addAttribute("destinations", serviceDest.getAllDestinations());
		return "admin/admin_view_all_destinations";
	}

	@RequestMapping(value = "/editDestination")
	public String editDestination(@RequestParam("id") int id, Model model) {
		model.addAttribute("title", "Modifier");

		model.addAttribute("destination", serviceDest.getDestinationById(id));
		model.addAttribute("destinations", serviceDest.getAllDestinations());
		return "admin/admin_destination_form";
	}

	@RequestMapping(value = "/addDestination")
	public String addDestination(Model model) {
		model.addAttribute("title", "Ajouter");
		model.addAttribute("destination", new Destination());

		return "admin/admin_destination_form";
	}
	
	@RequestMapping(value = "/addNewDestination")
	public String addNewDestination(Model model) {
		model.addAttribute("title", "Ajouter");
		model.addAttribute("destination", new Destination());

		return "admin/admin_new_destination_form";
	}

	@RequestMapping(value = "/saveDestination")
	// Model à la fin
	public String saveDestination(@RequestParam("id") long id, @RequestParam("region") String region, @RequestParam("description") String description, @RequestParam("idcity") String idcity , @RequestParam("etat") boolean etat,  Model model) {

			Destination destination = serviceDest.getDestinationById(id);
			destination.setRegion(region);
			destination.setDescription(description);
			destination.setEtat(etat);
			destination.setIdcity(idcity);
			serviceDest.save(destination);

			model.addAttribute("destination", serviceDest.getDestinationById(id));
			model.addAttribute("destinations", serviceDest.getAllDestinations());
			return "admin/admin_view_all_destinations";
		}
	
	@RequestMapping(value = "/saveNewDestination")
	public String saveNewDestination(@Valid Destination destination, BindingResult bindingResult, Model model) {
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("destinations", serviceDest.getAllDestinations());
			return "admin/admin_view_all_destinations";
		} else {
			serviceDest.save(destination);
			
			model.addAttribute("destinations", serviceDest.getAllDestinations());
			return "admin/admin_view_all_destinations";
		}
	}
	@RequestMapping(value = "/deleteDestination")
	public String deleteDestination(@RequestParam("idDest") long id, Model model) {
		serviceDest.delete(id);
		model.addAttribute("destination", new Destination());
		model.addAttribute("destinations", serviceDest.getAllDestinations());
		return "admin/admin_view_all_destinations";
	}

	@RequestMapping(value = "/addDateDeVoyage")
	public String addDateDeVoyage(@RequestParam("idd") long idd,
											Model model) {
		logger.info("<<<<<<<<<<<< datesvoyage destination" + idd);
		model.addAttribute("datesVoyage", new DatesVoyage());
		model.addAttribute("destination", serviceDest.getDestinationById(idd));		
		
		
//		model.addAttribute("destinations", serviceDest.getAllDestinations());

		return "admin/admin_date_form";
	}
	
	@RequestMapping(value = "/addDate")
	public String addDate(@RequestParam("idd") long idd,@RequestParam("dateAller") String dateAller,@RequestParam("dateRetour") String dateRetour,
						@RequestParam("prixHT") double prixHT,
						Model model) {
	
		logger.info("<<<<<<<<<<<< addDate destination" + prixHT);
		logger.info("<<<<<<<<<<<< addDate destination   dateAller " + dateAller);
		logger.info("<<<<<<<<<<<< addDate destination  dateRetour" + dateRetour);
	
		DatesVoyage datesVoyage = new DatesVoyage();
		datesVoyage.setDateAller(Date.valueOf(dateAller));
		datesVoyage.setDateRetour(Date.valueOf(dateRetour));
		datesVoyage.setPrixHT(prixHT);
		datesVoyage.setEtat(true);
		
		serviceDate.save(datesVoyage);
		
		logger.info("<<<<<<<<<<<< addDate destination" + datesVoyage.getDateAller());
		
		Destination destination = serviceDest.getDestinationById(idd);
		destination.addDatesVoyage(datesVoyage);			
		serviceDest.save(destination);
		
		model.addAttribute("datesVoyage", new DatesVoyage());
		model.addAttribute("destination", serviceDest.getDestinationById(idd));
		
		return "admin/admin_date_form";
	}
//	@RequestParam("idv") long idv,
	@RequestMapping(value = "/deleteDate")
	public String deleteDate(@RequestParam("idv") long idDate,@RequestParam("idDest") long idDest, Model model) {
		
		logger.info("<<<<<<<<<<<< delete  destination idDest  " + idDest);
		logger.info("<<<<<<<<<<<< delete  destination  idDate  " + idDate);
		
		serviceDate.delete(idDate);
		
		model.addAttribute("datesVoyage", new DatesVoyage());
		model.addAttribute("destination", serviceDest.getDestinationById(idDest));
		return "admin/admin_date_form";
	}
	

	public String addImages(@RequestParam("idDest") long idDest, Model model) {

		return "admin/admin_image_form";
	}
}
