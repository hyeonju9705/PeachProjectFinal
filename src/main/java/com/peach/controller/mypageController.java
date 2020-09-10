package com.peach.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.peach.domain.BoardVO;
import com.peach.domain.Page;
import com.peach.service.BoardService;

@Controller
@RequestMapping("/mypage/*")
public class mypageController {
	@Inject
	private BoardService service;
	@RequestMapping(value = "/editinfo", method = RequestMethod.GET)
 	public void editinfo() throws Exception {}
	@RequestMapping(value = "/editstore_offline", method = RequestMethod.GET)
 	public void editstore_offline() throws Exception {}
	@RequestMapping(value = "/editstore_online", method = RequestMethod.GET)
 	public void editstore_online() throws Exception {}
	@RequestMapping(value = "/mystore", method = RequestMethod.GET)
 	public void mystore() throws Exception {}
	@RequestMapping(value = "/mywrite", method = RequestMethod.GET)
	public void getListPageSearch(Model model, @RequestParam("num") int num,
			@RequestParam(value = "searchType",required = false, defaultValue = "title") String searchType,
			@RequestParam(value = "keyword",required = false, defaultValue = "") String keyword) 
					throws Exception {
		
		Page page = new Page(); 
		
		
	 	page.setNum(num);
	 	
	 	//page.setCount(service.count());  
	 	
	 	page.setCount(service.searchCount(searchType, keyword));
	 	
	 	page.setSearchType(searchType);
	 	page.setKeyword(keyword);
	 	
	 	List<BoardVO> list = null; 
	 	//list = service.listPage(page.getDisplayPost(), page.getPostNum());
	 	list = service.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
	 
	 	model.addAttribute("list", list);
	 	model.addAttribute("page", page);
	 	model.addAttribute("select", num);
//	 	
//	 	model.addAttribute("searchType", searchType);
//	 	model.addAttribute("keyword", keyword);
	}	
	
}