package org.pfp.service;

import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.DealDAO;
import org.pfp.dto.DealVO;
import org.springframework.stereotype.Service;

@Service
public class DealServiceImpl implements DealService {
	
	@Inject
	public DealDAO dao;

	@Override
	public List<DealVO> listDeal() throws Exception {
		return dao.listDeal();
	}

	@Override
	public List<DealVO> dealCountPrice() throws Exception {
		return dao.dealCountPrice();
	}

	@Override
	public List<DealVO> buyBid() throws Exception {
		return dao.buyBid();
	}

	@Override
	public List<DealVO> salesBid() throws Exception {
		return dao.salesBid();
	}
	
}
