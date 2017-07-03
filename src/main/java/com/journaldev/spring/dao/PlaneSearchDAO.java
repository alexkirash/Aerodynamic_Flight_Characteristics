package com.journaldev.spring.dao;

import java.util.List;

import com.journaldev.spring.model.Plane;

public interface PlaneSearchDAO {

	//Search by parameter
	public List<Plane> searchPlane(Plane pls);
	public List<Plane> searchPlaneWeight(Plane pls);
	public List<Plane> searchPlaneHeight(Plane pls);
	public List<Plane> searchPlaneRangeOfFlight(Plane pls);
	public List<Plane> searchPlaneDragForce(Plane pls);
	public List<Plane> searchPlanePitch(Plane pls);
	public List<Plane> searchPlaneMomentOfInertia(Plane pls);
}
