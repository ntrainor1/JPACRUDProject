package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.Wonder;

@Transactional
@Component
public class WonderDAOImpl implements WonderDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Wonder createWonder(Wonder newWonder) {
		// SET ACTOR PARAMETER TO BE PERSISTED
		em.persist(newWonder);

		// FLUSH TO PREP FOR COMMIT
		em.flush();

		// RETURN WONDER
		return newWonder;
	}

	@Override
	public Wonder updateWonder(int id, Wonder updatingWonder) {
		// FIND WONDER WITH NAME
		Wonder managedWonder = em.find(Wonder.class, id);

		// UPDATE WONDER FIELDS
			managedWonder.setName(updatingWonder.getName());
			managedWonder.setDescription(updatingWonder.getDescription());
			managedWonder.setConstructionDate(updatingWonder.getConstructionDate());
			managedWonder.setEra(updatingWonder.getEra());
			managedWonder.setLatitude(updatingWonder.getLatitude());
			managedWonder.setLongitude(updatingWonder.getLongitude());
			managedWonder.setWikiUrl(updatingWonder.getWikiUrl());
			managedWonder.setPicUrl(updatingWonder.getPicUrl());

		// RETURN WONDER
		return managedWonder;
	}

	@Override
	public boolean destroy(int id) {
		boolean deleted = true;

		try {

			// FIND WONDER AND URL INFORMATION WITH NAME
			Wonder managedWonder = em.find(Wonder.class, id);

			// REMOVE URL FIRST, THEN WONDER
			em.remove(managedWonder);

		} catch (IllegalArgumentException iae) {

			deleted = false;

		}

		// RETURN BOOLEAN TO DETERMINE IF DELETE WAS SUCCESSFUL
		return deleted;
	}

	@Override
	public Wonder showWonder(int id) {
		// RETRIEVE GENERAL INFORMATION FOR WONDER
		return em.find(Wonder.class, id);
	}

	@Override
	public List<Wonder> index() {
		// SET UP JPQL STATEMENT
		String findTotal = "SELECT w FROM Wonder w";

		// GET TOTAL LIST
		List<Wonder> totalWonders = em.createQuery(findTotal, Wonder.class).getResultList();
		return totalWonders;
	}

}
