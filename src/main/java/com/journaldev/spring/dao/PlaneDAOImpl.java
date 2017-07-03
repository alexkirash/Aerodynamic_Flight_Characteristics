package com.journaldev.spring.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Person;
import com.journaldev.spring.model.Plane;

@Repository
public class PlaneDAOImpl implements PlaneDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(PlaneDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addPlane(Plane pl) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(pl);
		logger.info("Plane saved successfully, Plane Details="+pl);
	}

	@Override
	public void updatePlane(Plane pl) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(pl);
		logger.info("Plane updated successfully, Plane Details="+pl);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Plane> listPlanes() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Plane> planesList = session.createQuery("from Plane").list();
		for(Plane pl : planesList){
			logger.info("Plane List::"+pl);
		}
		return planesList;
	}

	@Override
	public Plane getPlaneById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Plane pl = (Plane) session.load(Plane.class, new Integer(id));
		logger.info("Plane loaded successfully, Plane details="+pl);
		return pl;
	}

	@Override
	public void removePlane(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Plane pl = (Plane) session.load(Plane.class, new Integer(id));
		if(null != pl){
			session.delete(pl);
		}
		logger.info("Plane deleted successfully, Plane details="+pl);
	}

}
