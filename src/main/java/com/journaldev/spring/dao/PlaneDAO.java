package com.journaldev.spring.dao;

import java.util.List;

import com.journaldev.spring.model.Plane;

public interface PlaneDAO {

	public void addPlane(Plane pl);
	public void updatePlane(Plane pl);
	public List<Plane> listPlanes();
	public Plane getPlaneById(int id);
	public void removePlane(int id);
	

}
