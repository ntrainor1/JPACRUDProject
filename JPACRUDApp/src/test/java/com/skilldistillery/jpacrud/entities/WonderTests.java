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
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
		wonder = em.find(Wonder.class, 1);
	}

	@Test
	@DisplayName("Test Wonder entity mapping")
	void test_wonder_mappings() {
		assertEquals("Pyramids of Giza", wonder.getName());
		assertEquals("The Great Pyramid of Giza (also known as the Pyramid of Khufu or the Pyramid of Cheops) is the oldest and largest of the three pyramids in the Giza pyramid complex bordering what is now El Giza, Egypt.", wonder.getDescription());
		assertEquals(2580, wonder.getConstructionDate());
		assertEquals("BC", wonder.getEra().toString());
		assertEquals(31.1342, wonder.getLatitude());
		assertEquals(29.9792, wonder.getLongitude());
		assertEquals("https://en.wikipedia.org/wiki/Giza_pyramid_complex", wonder.getWikiUrl());
		assertEquals("https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg", wonder.getPicUrl());
	}
	
	@Test
	@DisplayName("Test Wonder entity has era")
	void test_wonder_era() {
		assertEquals(Era.BC, wonder.getEra());
	}
	
	@AfterEach
	public void tearDown() throws Exception {
		wonder = null;
		em.close();
		emf.close();
	}
}
