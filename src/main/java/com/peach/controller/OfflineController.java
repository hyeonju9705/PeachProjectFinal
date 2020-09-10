package com.peach.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.peach.domain.OfflineVO;
import com.peach.domain.OnlineVO;
import com.peach.domain.Page;
import com.peach.service.OfflineService;

@Controller
@RequestMapping("/Offline/*")
public class OfflineController {

	@Inject
	private OfflineService service;

	@RequestMapping(value = "/offline", method = RequestMethod.GET)
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
	 	
	 	List<OfflineVO> list = null; 
	 	//list = service.listPage(page.getDisplayPost(), page.getPostNum());
	 	list = service.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
	 
	 	model.addAttribute("list", list);
	 	model.addAttribute("page", page);
	 	model.addAttribute("select", num);
//	 	
//	 	model.addAttribute("searchType", searchType);
//	 	model.addAttribute("keyword", keyword);
	}	
	@RequestMapping(value = "/store_add_off", method = RequestMethod.GET)
 	public void store_add_off() throws Exception {}
	@RequestMapping(value = "/store_add_off", method = RequestMethod.POST)
 	public String postwrite(OfflineVO vo) throws Exception {
		service.write(vo);
		return "redirect:/Offline/offline";
	}
}