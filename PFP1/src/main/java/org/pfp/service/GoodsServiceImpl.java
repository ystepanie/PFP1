package org.pfp.service;

import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.GoodsDAO;
import org.pfp.dto.GoodsVO;
import org.springframework.stereotype.Service;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Inject
	public GoodsDAO dao;
	
	@Override
	public List<GoodsVO> listRecommand() throws Exception {
		return dao.listRecommand();
	}

	@Override
	public List<GoodsVO> listPopular() throws Exception {
		return dao.listPopular();
	}

	@Override
	public List<GoodsVO> listLatest() throws Exception {
		return dao.listLatest();
	}

	@Override
	public List<GoodsVO> listCheap() throws Exception {
		return dao.listCheap();
	}

	@Override
	public List<GoodsVO> listExpensive() throws Exception {
		return dao.listExpensive();
	}

	@Override
	public GoodsVO detail(int modelNum) throws Exception {
		return dao.detail(modelNum);
	}

}
