package com.peach.dao;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.peach.domain.PriceVO;
@Repository
public class PriceDAOlmpl implements PriceDAO {

	@Inject
 	private SqlSession sql;
 
 	private static String namespace = "com.board.mappers.Price";

 	// 게시물 목록
	

	@Override
	public PriceVO price(PriceVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".list");
	}
	 
}