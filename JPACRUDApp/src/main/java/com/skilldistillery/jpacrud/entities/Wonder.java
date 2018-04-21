package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Wonder {
	// FIELDS
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String description;
	
	@Column(name="construction_date")
	private int constructionDate;
	
	@Enumerated(EnumType.STRING)
	private Era era;

	private double latitude;
	
	private double longitude;
	
	@Column(name="wiki_url")
	private String wikiUrl;
	
	@Column(name="pic_url")
	private String picUrl;

	// GETTERS AND SETTERS
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getConstructionDate() {
		return constructionDate;
	}

	public void setConstructionDate(int constructionDate) {
		this.constructionDate = constructionDate;
	}

	public Era getEra() {
		return era;
	}

	public void setEra(Era era) {
		this.era = era;
	}
	
	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public String getWikiUrl() {
		return wikiUrl;
	}

	public void setWikiUrl(String wikiUrl) {
		this.wikiUrl = wikiUrl;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public int getId() {
		return id;
	}

	// TO STRING
	@Override
	public String toString() {
		return "Wonder [id=" + id + ", name=" + name + ", description=" + description + ", constructionDate="
				+ constructionDate + ", era=" + era + ", latitude=" + latitude + ", longitude=" + longitude
				+ ", wikiUrl=" + wikiUrl + ", picUrl=" + picUrl + "]";
	}

	// CONSTRUCTORS
	public Wonder() {
	}

	public Wonder(String name, String description, int constructionDate, Era era, double latitude, double longitude,
			String wikiUrl, String picUrl) {
		this.name = name;
		this.description = description;
		this.constructionDate = constructionDate;
		this.era = era;
		this.latitude = latitude;
		this.longitude = longitude;
		this.wikiUrl = wikiUrl;
		this.picUrl = picUrl;
	}
	
}
