package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Wonder;

public interface WonderDAO {

	public Wonder createWonder(Wonder newWonder);
	
	public Wonder updateWonder(int id, Wonder updatingWonder);
	
	public Wonder showWonder(int id);
	
	public List<Wonder> index();
	
	public boolean destroy(int id);
	
}