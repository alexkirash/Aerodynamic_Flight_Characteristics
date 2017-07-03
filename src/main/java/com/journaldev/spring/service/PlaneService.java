package com.journaldev.spring.service;


import java.util.List;

import com.journaldev.spring.model.Plane;

public interface PlaneService {

	public void addPlane(Plane pl);
	public void updatePlane(Plane pl);
	public List<Plane> listPlanes();
	public Plane getPlaneById(int id);
	public void removePlane(int id);
		
}