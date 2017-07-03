package com.journaldev.spring.service;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.PlaneSearchDAO;
import com.journaldev.spring.model.Plane;

@Service
public class PlaneSearchServiceImpl implements PlaneSearchService{
	
	private PlaneSearchDAO planeSearchDAO;

	public void setPlaneSearchDAO(PlaneSearchDAO planeSearchDAO) {
		this.planeSearchDAO = planeSearchDAO;
	}

	@Override
	@Transactional
	public List<Plane> searchPlane(Plane pls){
		return this.planeSearchDAO.searchPlane(pls);
	}
	
	@Override
	@Transactional
	public List<Plane> searchPlaneWeight(Plane pls){
		return this.planeSearchDAO.searchPlaneWeight(pls);
	}
	
	@Override
	@Transactional
	public List<Plane> searchPlaneHeight(Plane pls){
		return this.planeSearchDAO.searchPlaneHeight(pls);
	}
	
	@Override
	@Transactional
	public List<Plane> searchPlaneRangeOfFlight(Plane pls){
		return this.planeSearchDAO.searchPlaneRangeOfFlight(pls);
	}
	
	@Override
	@Transactional
	public List<Plane> searchPlaneDragForce(Plane pls){
		return this.planeSearchDAO.searchPlaneDragForce(pls);
	}
	
	@Override
	@Transactional
	public List<Plane> searchPlanePitch(Plane pls){
		return this.planeSearchDAO.searchPlanePitch(pls);
	}
	
	@Override
	@Transactional
	public List<Plane> searchPlaneMomentOfInertia(Plane pls){
		return this.planeSearchDAO.searchPlaneMomentOfInertia(pls);
	}
}
