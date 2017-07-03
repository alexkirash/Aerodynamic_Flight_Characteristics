package com.journaldev.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Plane;

@Repository
public class PlaneSearchDAOImpl implements PlaneSearchDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(PlaneSearchDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
		
	
	@Override
	public List<Plane> searchPlane(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.name = :pl_name";
		Query query = session.createQuery(hql);
		query.setParameter("pl_name", pls.getName());
		List<Plane> planesList = query.list();		
		return planesList;
	}
	
	@Override
	public List<Plane> searchPlaneWeight(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.weight = :pl_weight";
		Query query = session.createQuery(hql);
		query.setParameter("pl_weight", pls.getWeight());
		List<Plane> planesList = query.list();		
		return planesList;
	}
	
	@Override
	public List<Plane> searchPlaneHeight(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.height = :pl_height";
		Query query = session.createQuery(hql);
		query.setParameter("pl_height", pls.getHeight());
		List<Plane> planesList = query.list();		
		return planesList;
	}
	
	@Override
	public List<Plane> searchPlaneRangeOfFlight(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.rangeOfFlight = :pl_rangeOfFlight";
		Query query = session.createQuery(hql);
		query.setParameter("pl_rangeOfFlight", pls.getRangeOfFlight());
		List<Plane> planesList = query.list();		
		return planesList;
	}
	
	@Override
	public List<Plane> searchPlaneDragForce(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.dragForce = :pl_dragForce";
		Query query = session.createQuery(hql);
		query.setParameter("pl_dragForce", pls.getDragForce());
		List<Plane> planesList = query.list();		
		return planesList;
	}
	
	@Override
	public List<Plane> searchPlanePitch(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.pitch = :pl_pitch";
		Query query = session.createQuery(hql);
		query.setParameter("pl_pitch", pls.getPitch());
		List<Plane> planesList = query.list();		
		return planesList;
	}
	
	
	@Override
	public List<Plane> searchPlaneMomentOfInertia(Plane pls) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "FROM Plane P WHERE P.momentOfInertia = :pl_momentOfInertia";
		Query query = session.createQuery(hql);
		query.setParameter("pl_momentOfInertia", pls.getMomentOfInertia());
		List<Plane> planesList = query.list();		
		return planesList;
	}
}
