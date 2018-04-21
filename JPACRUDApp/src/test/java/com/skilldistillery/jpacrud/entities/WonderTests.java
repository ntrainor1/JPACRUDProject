package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class WonderTests {
	private EntityManagerFactory emf;
	private EntityManager em;
	private Wonder wonder;

	@BeforeEach
	public void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("VideoStore");
		em = emf.createEntityManager();
		wonder = em.find(Wonder.class, "P");
	}

	@Test
	@DisplayName("Test Wonder entity mapping")
	void test_wonder_mappings() {
		assertEquals("ACADEMY DINOSAUR", wonder.getName());
		assertEquals("A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies", wonder.getDescription());
	}
	
	@Test
	@DisplayName("Test Wonder entity has rating")
	void test_film_rating() {
		assertEquals(Era.BC, wonder.getEra());
	}
	
	@AfterEach
	public void tearDown() throws Exception {
		wonder = null;
		em.close();
		emf.close();
	}
}
