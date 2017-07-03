package com.journaldev.spring.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations Hibernate provides JPA implementation
 * 
 * @author alex
 *
 */
@Entity
@Table(name = "plane")
public class Plane {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;	
	private String name;
	private String weight;
	private String height;
	private String rangeOfFlight;
	private String dragForce;
	private String pitch;
	private String momentOfInertia;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}
	
	public String getRangeOfFlight() {
		return rangeOfFlight;
	}

	public void setRangeOfFlight(String rangeOfFlight) {
		this.rangeOfFlight = rangeOfFlight;
	}
	
	public String getDragForce() {
		return dragForce;
	}

	public void setDragForce(String dragForce) {
		this.dragForce = dragForce;
	}
	
	public String getPitch() {
		return pitch;
	}

	public void setPitch(String pitch) {
		this.pitch = pitch;
	}
	public String getMomentOfInertia() {
		return momentOfInertia;
	}

	public void setMomentOfInertia(String momentOfInertia) {
		this.momentOfInertia = momentOfInertia;
	}
	

	@Override
	public String toString() {
		return "id=" + id + ", name=" + name + ", weight=" + weight + ", height=" + height + ", rangeOfFlight=" + rangeOfFlight  +  ", dragForce=" + dragForce + ", pitch=" + pitch + ", momentOfInertia=" + momentOfInertia;
	}
}
