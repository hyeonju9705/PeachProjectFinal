package com.peach.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.peach.dao.BoardDAO;
import com.peach.domain.BoardVO;

@Service
public class BoardServicelmpl implements BoardService {

	@Inject
 	private BoardDAO dao;
	// 게시물 조회 
	@SuppressWarnings("rawtypes")
	@Override
 	public List list() throws Exception {

		return dao.list();
	}
	@Override
 	public List best() throws Exception {

		return dao.best();
	}@Override
 	public List newboard() throws Exception {

		return dao.newboard();
	}
	public void viewhit(int bno) throws Exception{
		dao.viewhit(bno);
	}
	//게시물 작성 
	@Override
	public void write(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.write(vo);
	}
	// 게시물 조회
	@Override
	public BoardVO view(int bno) throws Exception {

	 return dao.view(bno);
	}
	// 게시물 수정
	@Override
	public void modify(BoardVO vo) throws Exception {
	  
		dao.modify(vo);
	}
	//게시물 삭제 
	@Override
	public void delete(int bno) throws Exception {
		// TODO Auto-generated method stub
			dao.delete(bno);
	}
	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
			return dao.count();
	}
	// 게시물 목록 + 페이징
			@Override
	public List listPage(int displayPost, int postNum) throws Exception {
			return dao.listPage(displayPost, postNum);
	}
	// 게시물 목록 + 페이징 + 검색
	@Override
	public List<BoardVO> listPageSearch(
			int displayPost, int postNum, String searchType, String keyword) throws Exception {
			return  dao.listPageSearch(displayPost, postNum, searchType, keyword);
	}
	// 게시물 총 갯수 + 검색 적용
	// 게시물 총 갯수
	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
	 return dao.searchCount(searchType, keyword);
	}
}