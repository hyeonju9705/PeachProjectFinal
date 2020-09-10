package com.peach.service;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.peach.dao.PriceDAO;
import com.peach.domain.PriceVO;

@Service
public class PriceServicelmpl implements PriceService {

	@Inject
 	private PriceDAO dao;

	public PriceVO price(PriceVO vo) throws Exception {
		
		return dao.price(vo);
	}

	
}