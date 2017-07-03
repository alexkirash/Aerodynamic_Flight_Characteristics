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

import com.journaldev.spring.model.Plane;
import com.journaldev.spring.service.PlaneSearchService;
import com.journaldev.spring.service.PlaneService;

@Controller
public class PlaneSearchController {
	
	private PlaneSearchService planeSearchService;


	@Autowired(required = true)
	@Qualifier(value = "planeSearchService")
	public void setPlaneSearchService(PlaneSearchService psl) {
		this.planeSearchService = psl;
	}
	
	//Search

	@RequestMapping(value = "/search-planeName", method = RequestMethod.POST )
	public String searchPlane(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlane(pls));  
    return "searchForm";
	}
	
	@RequestMapping(value = "/search-planeWeight", method = RequestMethod.POST )
	public String searchPlaneWeight(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlaneWeight(pls));  
    return "searchForm";
	}
	
	@RequestMapping(value = "/search-planeHeight", method = RequestMethod.POST )
	public String searchPlaneHeight(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlaneHeight(pls));  
    return "searchForm";
	}
	
	@RequestMapping(value = "/search-planeRangeOfFlight", method = RequestMethod.POST )
	public String searchPlaneRangeOfFlight(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlaneRangeOfFlight(pls));  
    return "searchForm";
	}
	
	@RequestMapping(value = "/search-planeDragForce", method = RequestMethod.POST )
	public String searchPlaneDragForce(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlaneDragForce(pls));  
    return "searchForm";
	}
	
	@RequestMapping(value = "/search-planePitch", method = RequestMethod.POST )
	public String searchPlanePitch(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlanePitch(pls));  
    return "searchForm";
	}
	
	@RequestMapping(value = "/search-planeMomentOfInertia", method = RequestMethod.POST )
	public String searchPlaneMomentOfInertia(@ModelAttribute("plane") Plane pls, Model model) {	
 	System.out.println("Plane=" + pls.toString());
    model.addAttribute("listPlanes", this.planeSearchService.searchPlaneMomentOfInertia(pls));  
    return "searchForm";
	}
	
}
