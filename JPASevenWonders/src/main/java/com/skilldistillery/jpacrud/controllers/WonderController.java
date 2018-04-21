package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.WonderDAO;
import com.skilldistillery.jpacrud.entities.Wonder;

@Controller
public class WonderController {
	@Autowired
	private WonderDAO dao;

	// SET UP HOME PAGE WITH LIST OF PREEXISTING WONDERS
	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Wonder> wonderList = dao.index();
		mv.addObject("wonderList", wonderList);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}

	// SET UP CREATE WONDER PAGE
	@RequestMapping(path = "layout.do", method = RequestMethod.GET)
	public ModelAndView toCreate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/createWonder.jsp");
		return mv;
	}

	// PERSIST USER WONDER TO DATABASE
	@RequestMapping(path = "addInfo.do", method = RequestMethod.POST)
	public ModelAndView createWonder(Wonder wonder, Errors errors, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		System.out.println(wonder);
		Wonder w = dao.createWonder(wonder);
		if (w != null) {
			mv.setViewName("redirect:wonderAdded.do");
		} else {
			mv.setViewName("WEB-INF/views/deleteFail.jsp");
		}
		return mv;
	}

	// REDIRECT USER TO PREVENT REPETITION
	@RequestMapping(path = "wonderAdded.do", method = RequestMethod.GET)
	public ModelAndView addedWonder() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/deleteSuccess.jsp");
		return mv;
	}

	// SHOW WONDER DETAILS
	@RequestMapping(path = "show.do", method = RequestMethod.GET)
	public ModelAndView showWonder(@RequestParam(name = "wid") int wonderId) {
		ModelAndView mv = new ModelAndView();
		Wonder wonder = dao.showWonder(wonderId);
		mv.addObject("wonder", wonder);
		mv.setViewName("WEB-INF/views/show.jsp");
		return mv;
	}
	
	// SET UP UPDATE WONDER PAGE
	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView toUpdate(@RequestParam(name = "wid") int wonderId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/updateWonder.jsp");
		mv.addObject("wid", wonderId);
		return mv;
	}

	// PERSIST USER UPDATE TO DATABASE
	@RequestMapping(path = "updating.do", method = RequestMethod.POST)
	public ModelAndView updateWonder(@RequestParam(name = "wid") int wonderId, Wonder updatingWonder) {
		ModelAndView mv = new ModelAndView();
		if (dao.showWonder(wonderId) != null) {
			dao.updateWonder(wonderId, updatingWonder);
			mv.setViewName("redirect:wonderUpdated.do");
		} else {
			mv.setViewName("WEB-INF/views/deleteFail.jsp");
		}
		return mv;
	}

	// REDIRECT USER TO PREVENT REPETITION
	@RequestMapping(path = "wonderUpdated.do", method = RequestMethod.GET)
	public ModelAndView updatedWonder() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/deleteSuccess.jsp");
		return mv;
	}

	// DELETE WONDER
	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public ModelAndView deleteWonder(@RequestParam(name = "wid") int wonderId) {
		ModelAndView mv = new ModelAndView();
		Boolean delete = dao.destroy(wonderId);
		if (delete) {
			mv.setViewName("WEB-INF/views/deleteSuccess.jsp");
		} else {
			mv.setViewName("WEB-INF/views/deleteFail.jsp");
		}
		return mv;
	}
}
