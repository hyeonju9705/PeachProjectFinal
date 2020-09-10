	package com.peach.service;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.peach.dao.MemberDAO;
import com.peach.domain.UserVO;

@SuppressWarnings("unused")
@Repository
public class MemberServicelmpl implements MemberService {

	@Inject
 	private MemberDAO dao;
 
	@Override
	public void register(UserVO vo) throws Exception {
		dao.register(vo);
	}
	public UserVO login(UserVO vo) throws Exception{
		return dao.login(vo);
	}
	 
}