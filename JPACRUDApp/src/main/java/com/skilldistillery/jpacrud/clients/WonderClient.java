package com.skilldistillery.jpacrud.clients;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpacrud.entities.Wonder;

public class WonderClient {

	public static void main(String[] args) {
		// Build an EntityManagerFactory based on persistence.xml
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("CrudApp");

		// Create an instance of an EntityManager
		EntityManager em = emf.createEntityManager();

		// Use new EM to create a Customer Object from database,
		// Passing in the class literal and passing in the id into the SQL query
		Wonder add = em.find(Wonder.class, 1);
		Wonder add2 = em.find(Wonder.class, 2);

		// Print out the result
		System.out.println(add);
		System.out.println(add2);

		// No memory leaks...
		em.close();
		emf.close();
	}

}
