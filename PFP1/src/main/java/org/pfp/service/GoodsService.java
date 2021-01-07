package org.pfp.service;

import java.util.List;

import org.pfp.dto.GoodsVO;

public interface GoodsService {
	
	//shop에서 추천순으로 보여줌
		public List<GoodsVO> listRecommand() throws Exception;
}
