	package com.peach.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.peach.domain.BoardVO;
import com.peach.domain.UserVO;

@SuppressWarnings("unused")
@Repository
public class MemberDAOlmpl implements MemberDAO {

	@Inject
 	private SqlSession sql;
 
 	private static String namespace = "com.board.mappers.Member";

	@Override
	public void register(UserVO vo) throws Exception {
		sql.insert(namespace + ".register",vo);
	}
	public UserVO login(UserVO vo) throws Exception{
		return sql.selectOne(namespace + ".login",vo);
	}
	 
}