package com.peach.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.peach.domain.BoardVO;
import com.peach.domain.OnlineVO;
import com.peach.domain.Page;
import com.peach.service.OnlineService;

@Controller
@RequestMapping("/Online/*")
public class OnlineController {
	@Inject
	private OnlineService service;
	@RequestMapping(value = "/online", method = RequestMethod.GET)
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
	 	
	 	List<OnlineVO> list = null; 
	 	//list = service.listPage(page.getDisplayPost(), page.getPostNum());
	 	list = service.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
	 
	 	model.addAttribute("list", list);
	 	model.addAttribute("page", page);
	 	model.addAttribute("select", num);
//	 	
//	 	model.addAttribute("searchType", searchType);
//	 	model.addAttribute("keyword", keyword);
	}	
	@RequestMapping(value = "/store_add", method = RequestMethod.GET)
 	public void boardwrite(BoardVO vo) throws Exception {
	}
	// 게시물작성
	@RequestMapping(value = "/store_add", method = RequestMethod.POST)
 	public String postwrite(OnlineVO vo) throws Exception {
		service.write(vo);
		return "redirect:/Online/online?num=1";
	}
}