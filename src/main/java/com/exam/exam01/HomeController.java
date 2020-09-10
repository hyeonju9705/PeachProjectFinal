package com.exam.exam01;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peach.domain.BoardVO;
import com.peach.service.BoardService;


@Controller
public class HomeController {
	@Inject
	private BoardService service;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public void home(Model model) throws Exception {
		
		List<BoardVO> list = null;
	 	list = service.best();	
	 	model.addAttribute("list", list);
	}
	
}
