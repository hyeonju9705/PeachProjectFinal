package com.peach.service;

import com.peach.domain.UserVO;

@SuppressWarnings("unused")
public interface MemberService {
	//
	
	public void register(UserVO vo) throws Exception;

	public UserVO login(UserVO vo) throws Exception;
}