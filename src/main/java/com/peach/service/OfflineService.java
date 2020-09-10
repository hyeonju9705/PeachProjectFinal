package com.peach.service;

import java.util.List;
import com.peach.domain.OfflineVO;


public interface OfflineService {
 
	public List list() throws Exception; 

	//게시물 작성
	public void write(OfflineVO vo) throws Exception;
	// 게시물 조회
//	public OfflineVO view(int bno) throws Exception;
//	// 게시물 수정
//	public void modify(OfflineVO vo) throws Exception;
//	// 게시물 삭제 
// 	public void delete(int bno) throws Exception;
// 	// 게시물 총 갯수
 	public int count() throws Exception;
// 	// 게시물 목록 + 페이징
// 	public List listPage(int displayPost, int postNum) throws Exception;
// 	// 게시물 목록 + 페이징 + 검색
 	public List<OfflineVO> listPageSearch(
 	  int displayPost, int postNum, String searchType, String keyword) throws Exception;
// 	// 게시물 총 갯수 + 검색 적용
 	public int searchCount(String searchType, String keyword) throws Exception;
}