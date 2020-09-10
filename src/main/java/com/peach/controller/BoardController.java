package com.peach.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.peach.domain.BoardVO;
import com.peach.domain.Page;
import com.peach.domain.ReplyVO;
import com.peach.service.BoardService;
import com.peach.service.ReplyService;

@Controller
@RequestMapping("/community/*")
public class BoardController {
	@Inject
	private BoardService service;

	@Inject
	ReplyService replyService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
 	public void community(Model model) throws Exception {
	 	List<BoardVO> list = null;
	 	list = service.list();	
	 	model.addAttribute("list", list);	
	}
	//게시물작성 
	@RequestMapping(value = "/write", method = RequestMethod.GET)
 	public void boardwrite(BoardVO vo) throws Exception {
	}
	// 게시물작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
 	public String postwrite(BoardVO vo) throws Exception {
		service.write(vo);
		return "redirect:/community/listPageSearch?num=1";
	}
	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
 	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
		BoardVO vo = service.view(bno);
		service.viewhit(bno);
		model.addAttribute("view", vo);

		//댓글 조회
		List<ReplyVO> replyList = replyService.readReply(bno);
		model.addAttribute("replyList", replyList);
	}
	

	//댓글 작성
		@RequestMapping(value="/replyWrite", method = {RequestMethod.GET, RequestMethod.POST})
		public String replyWrite(ReplyVO vo, RedirectAttributes rttr) throws Exception {
		
			replyService.writeReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());
			return "redirect:/community/view?bno=" + vo.getBno();
		}
	//댓글 수정 Get
		@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
		public String replyUpdateView(ReplyVO vo,  Model model) throws Exception {
			model.addAttribute("replyUpdate", replyService.selectReply(vo.getRno()));

			return "community/replyUpdateView";
		}
		
	//댓글 수정 Post
		@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
		public String replyUpdate(ReplyVO vo,  RedirectAttributes rttr) throws Exception {
			
			replyService.updateReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());

			return "redirect:/community/view?bno=" + vo.getBno();
		}
		//댓글 삭제  GET
		@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(ReplyVO vo,  Model model) throws Exception {
			
			model.addAttribute("replyDelete", replyService.selectReply(vo.getRno()));

			return "community/replyDeleteView";
		}
		
		//댓글 삭제 POST
		@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
		public String replyDelete(ReplyVO vo,  RedirectAttributes rttr) throws Exception {
			
			replyService.deleteReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());

			return "redirect:/community/view?bno=" + vo.getBno();
		}
		
	// 게시물 수정
	//update.jsp 보여줌
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void updateGET(@RequestParam("bno") int bno, Model model) throws Exception{
			BoardVO vo = service.view(bno);
			
			model.addAttribute("view",vo);
		}
	// 게시물 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(BoardVO vo) throws Exception {

		service.modify(vo);
		return "redirect:/community/view?bno=" + vo.getBno();
	}
	// 게시물 삭제 
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String Getdelete(@RequestParam("bno") int bno) throws Exception{
			service.delete(bno);
			return "redirect:/community/listPageSearch?num=1";
	}
	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "/listpage", method = RequestMethod.GET)
	public void getListPage(Model model) throws Exception {
		List list = null; 
	 	list = service.list();
	 	model.addAttribute("list", list);   
	}
	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void getListPage(Model model, @RequestParam("num") int num) throws Exception {
		Page page = new Page();
		
		page.setNum(num);
		page.setCount(service.count());  

		List<BoardVO> list = null; 
		list = service.listPage(page.getDisplayPost(), page.getPostNum());
		model.addAttribute("list",list);
		model.addAttribute("page", page);
		model.addAttribute("select", num);
	}	
	// 게시물 목록 + 페이징 추가 + 검색
	@RequestMapping(value = "/listPageSearch", method = RequestMethod.GET)
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
	
	@RequestMapping(value = "/review", method = RequestMethod.GET)
 	public void review() throws Exception {}
	@RequestMapping(value = "/reviewwrite", method = RequestMethod.GET)
 	public void reviewwrite() throws Exception {}
}