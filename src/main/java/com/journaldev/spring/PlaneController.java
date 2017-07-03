
package com.journaldev.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.journaldev.spring.model.Person;
import com.journaldev.spring.model.Plane;
import com.journaldev.spring.service.PlaneService;

@Controller
public class PlaneController {


	private PlaneService planeService;

	@Autowired(required = true)
	@Qualifier(value = "planeService")
	public void setPlaneService(PlaneService psl) {
		this.planeService = psl;
	}

	@RequestMapping(value = "/planes", method = RequestMethod.GET)
	public String listPlanes(Model model) {
		model.addAttribute("plane", new Plane());
		model.addAttribute("listPlanes", this.planeService.listPlanes());
		return "newPlane";
	}
	
	// For add and update plane both
	@RequestMapping(value = "/plane/add", method = RequestMethod.POST)
	public String addPlane(@ModelAttribute("plane") Plane pl, Model model) {
		if (pl.getId() == 0) {
			// new plane, add it
			this.planeService.addPlane(pl);
		} else {
			// existing plane, call update
			this.planeService.updatePlane(pl);
		}		
		model.addAttribute("plane", new Plane());
		model.addAttribute("listPlanes", this.planeService.listPlanes());
		return "planeFormList";	

	}

	@RequestMapping("/remove-plane/{id}")
	public String removePlane(@PathVariable("id") int id) {

		this.planeService.removePlane(id);
		return "redirect:/planes-form";
	}
	@RequestMapping(value = "/planes-form", method = RequestMethod.GET)
	public String listPlanes2(Model model) {
		model.addAttribute("plane", new Plane());
		model.addAttribute("listPlanes", this.planeService.listPlanes());
		return "planeFormList";

	}

	@RequestMapping("/edit-plane/{id}")
	public String editPlane(@PathVariable("id") int id, Model model) {
		model.addAttribute("plane", this.planeService.getPlaneById(id));
		model.addAttribute("listPlanes", this.planeService.listPlanes());
		return "newPlane";
	}
	
	@RequestMapping(value = "/fon", method = RequestMethod.GET)
	public String goFon(HttpServletRequest request) {
		return "fon";
	}
	
	@RequestMapping(value = "/fonTest", method = RequestMethod.GET)
	public String goFonTest(HttpServletRequest request) {
		return "fonTest";
	}
	
	@RequestMapping(value = "/authorization",  method = RequestMethod.GET)
	public String PlaneAdd(Model model) {
		model.addAttribute("plane", new Plane());
		return "newPlane";
	}
	
	
	/*SEARCH MENU*/
	@RequestMapping(value = "/search_name",  method = RequestMethod.GET)
	public String goSearchName(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchName";
	}
	@RequestMapping(value = "/search_weight",  method = RequestMethod.GET)
	public String goSearchWeight(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchWeight";
	}
	@RequestMapping(value = "/search_height",  method = RequestMethod.GET)
	public String goSearchHeight(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchHeight";
	}
	@RequestMapping(value = "/search_rangeOfFlight",  method = RequestMethod.GET)
	public String goSearchRangeOfFlight(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchRangeOfFlight";
	}
	@RequestMapping(value = "/search_dragForce",  method = RequestMethod.GET)
	public String goSearchDragForce(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchDragForce";
	}
	@RequestMapping(value = "/search_pitch",  method = RequestMethod.GET)
	public String goSearchPitch(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchPitch";
	}
	@RequestMapping(value = "/search_momentOfInertia",  method = RequestMethod.GET)
	public String goSearchMomentOfInertia(Model model) {
		model.addAttribute("plane", new Plane());
		return "search/searchMomentOfInertia";
	}
		
	@RequestMapping(value = "/search_menu", method = RequestMethod.GET)
	public String goSearchMenu(HttpServletRequest request) {
		return "searchMenu";
	}
	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public String goInformation(HttpServletRequest request) {
		return "information";
	}
	@RequestMapping(value = "/aboutMe", method = RequestMethod.GET)
	public String goAboutMe(HttpServletRequest request) {
		return "aboutMe";
	}
	@RequestMapping(value = "/search_surname", method = RequestMethod.GET)
	public String goSearchSurname() {
		return "search/searchSurname";
	}
	@RequestMapping(value = "/search_patronymic", method = RequestMethod.GET)
	public String goSearchPatronymic(HttpServletRequest request) {
		return "search/searchPatronymic";
	}
	@RequestMapping(value = "/search_address", method = RequestMethod.GET)
	public String goSearchAddress(HttpServletRequest request) {
		return "search/searchAddress";
	}
	@RequestMapping(value = "/search_phone", method = RequestMethod.GET)
	public String goSearchPhone(HttpServletRequest request) {
		return "search/searchPhone";
	}
	@RequestMapping(value = "/search_medicalCard", method = RequestMethod.GET)
	public String goSearchMedicalCard(HttpServletRequest request) {
		return "search/searchMedicalCard";
	}
	@RequestMapping(value = "/search_diagnosis", method = RequestMethod.GET)
	public String goSearchDiagnosis(HttpServletRequest request) {
		return "search/searchDiagnosis";
	}
}
