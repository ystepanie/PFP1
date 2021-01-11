package org.pfp.service;

import java.util.List;

import org.pfp.dto.DealVO;

public interface DealService {
	
		//거래 날짜, 거래 가격, 옵션
		public List<DealVO> listDeal(int modelNum) throws Exception;
		
		//거래 날짜별 수량, 평균 거래 가격
		public List<DealVO> dealCountPrice(int modelNum) throws Exception;
		
		//판매 입찰
		public List<DealVO> buyBid(int modelNum) throws Exception;
		
		//구매 입찰
		public List<DealVO> salesBid(int modelNum) throws Exception;
}
