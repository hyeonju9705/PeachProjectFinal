package com.peach.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peach.domain.BoardVO;
import com.peach.domain.PriceVO;
import com.peach.service.BoardService;
import com.peach.service.PriceService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private BoardService service;
	@Inject
	private PriceService service2;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,PriceVO vo) throws Exception{
		List<BoardVO> list = null;
	 	list = service.best();	
	 	model.addAttribute("list", list);
	 	
	 	List<BoardVO> list2 = null;
	 	list2 = service.newboard();	
	 	model.addAttribute("list2", list2);
	 	
	 	PriceVO how=service2.price(vo);
	 	model.addAttribute("Price",how);
		
	
		return "home";
	}
	
}
