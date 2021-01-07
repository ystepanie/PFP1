package org.pfp.dao;

import java.util.List;

import org.pfp.dto.GoodsVO;

public interface GoodsDAO {
	
	//shop에서 추천순으로 보여줌
	public List<GoodsVO> listRecommand() throws Exception;
	
	//인기순으로 보여줌
	public List<GoodsVO> listPopular() throws Exception;
	
	//최신 발매순으로 보여줌
	public List<GoodsVO> listLatest() throws Exception;
	
	//낮은 판매가순으로 보여줌
	public List<GoodsVO> listCheap() throws Exception;
	
	//높은 판매가순으로 보여줌
	public List<GoodsVO> listExpensive() throws Exception;
	
	//해당 상품의 detail
	public GoodsVO detail(int modelNum) throws Exception;
}
