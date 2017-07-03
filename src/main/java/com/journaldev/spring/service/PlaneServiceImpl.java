package com.journaldev.spring.service;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.PlaneDAO;
import com.journaldev.spring.model.Plane;

@Service
public class PlaneServiceImpl implements PlaneService {
	
	private PlaneDAO planeDAO;

	public void setPlaneDAO(PlaneDAO planeDAO) {
		this.planeDAO = planeDAO;
	}

	@Override
	@Transactional
	public void addPlane(Plane pl) {
		this.planeDAO.addPlane(pl);
	}

	@Override
	@Transactional
	public void updatePlane(Plane pl) {
		this.planeDAO.updatePlane(pl);
	}

	@Override
	@Transactional
	public List<Plane> listPlanes() {
		return this.planeDAO.listPlanes();
	}
	
	
	@Override
	@Transactional
	public Plane getPlaneById(int id) {
		return this.planeDAO.getPlaneById(id);
	}

	@Override
	@Transactional
	public void removePlane(int id) {
		this.planeDAO.removePlane(id);
	}

}
