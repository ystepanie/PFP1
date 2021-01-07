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

}
