package com.peach.service;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.peach.dao.OnlineDAO;
import com.peach.domain.OnlineVO;

@Service
public class OnlineServicelmpl implements OnlineService {

	@Inject
 	private OnlineDAO dao;
	// 게시물 조회 
	@Override
 	public List list() throws Exception {
		return dao.list();
	}
	//게시물 작성 
	@Override
	public void write(OnlineVO vo) throws Exception {
		dao.write(vo);
	}
//	// 게시물 조회
//	@Override
//	public OnlineVO view(int bno) throws Exception {
//
//	 return dao.view(bno);
//	}
//	// 게시물 수정
//	@Override
//	public void modify(OnlineVO vo) throws Exception {
//	  
//		dao.modify(vo);
//	}
//	//게시물 삭제 
//	@Override
//	public void delete(int bno) throws Exception {
//		// TODO Auto-generated method stub
//			dao.delete(bno);
//	}
//	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
			return dao.count();
	}
//	// 게시물 목록 + 페이징
//	@Override
//	public List listPage(int displayPost, int postNum) throws Exception {
//			return dao.listPage(displayPost, postNum);
//	}
//	// 게시물 목록 + 페이징 + 검색
	@Override
	public List<OnlineVO> listPageSearch(
			int displayPost, int postNum, String searchType, String keyword) throws Exception {
			return  dao.listPageSearch(displayPost, postNum, searchType, keyword);
	}
//	// 게시물 총 갯수 + 검색 적용
//	// 게시물 총 갯수
//	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
	 return dao.searchCount(searchType, keyword);
	}
}