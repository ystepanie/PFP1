package org.pfp.service;

import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.DealDAO;
import org.pfp.dto.DealVO;
import org.pfp.dto.GoodsVO;
import org.springframework.stereotype.Service;

@Service
public class DealServiceImpl implements DealService {
	
	@Inject
	public DealDAO dao;

	@Override
	public List<DealVO> listDeal(GoodsVO goods) throws Exception {
		return dao.listDeal(goods);
	}

	@Override
	public List<DealVO> dealCountPrice(GoodsVO goods) throws Exception {
		return dao.dealCountPrice(goods);
	}

	@Override
	public List<DealVO> buyBid(GoodsVO goods) throws Exception {
		return dao.buyBid(goods);
	}

	@Override
	public List<DealVO> salesBid(GoodsVO goods) throws Exception {
		return dao.salesBid(goods);
	}
	
}
