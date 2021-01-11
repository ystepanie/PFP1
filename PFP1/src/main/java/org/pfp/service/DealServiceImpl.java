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
	public List<DealVO> listDeal(int modelNum) throws Exception {
		return dao.listDeal(modelNum);
	}

	@Override
	public List<DealVO> dealCountPrice(int modelNum) throws Exception {
		return dao.dealCountPrice(modelNum);
	}

	@Override
	public List<DealVO> buyBid(int modelNum) throws Exception {
		return dao.buyBid(modelNum);
	}

	@Override
	public List<DealVO> salesBid(int modelNum) throws Exception {
		return dao.salesBid(modelNum);
	}
	
}
