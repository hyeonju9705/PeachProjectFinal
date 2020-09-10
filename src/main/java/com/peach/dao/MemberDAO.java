package com.peach.dao;

import com.peach.domain.UserVO;

@SuppressWarnings("unused")
public interface MemberDAO {
	//
	
	public void register(UserVO vo) throws Exception;
	public UserVO login(UserVO vo) throws Exception;
}