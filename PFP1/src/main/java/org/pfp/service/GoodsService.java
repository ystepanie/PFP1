package org.pfp.service;

import java.util.HashMap;
import java.util.List;

import org.pfp.dto.CardVO;
import org.pfp.dto.GoodsVO;

public interface GoodsService {
   
      //shop에서 추천순으로 보여줌
      public List<GoodsVO> listRecommand(HashMap<String, Integer> range) throws Exception;
      
      //인기순으로 보여줌
      public List<GoodsVO> listPopular(HashMap<String, Integer> range) throws Exception;
      
      //최신 발매순으로 보여줌
      public List<GoodsVO> listLatest(HashMap<String, Integer> range) throws Exception;
      
      //낮은 판매가순으로 보여줌
      public List<GoodsVO> listCheap(HashMap<String, Integer> range) throws Exception;
      
      //높은 판매가순으로 보여줌
      public List<GoodsVO> listExpensive(HashMap<String, Integer> range) throws Exception;
      
      //해당 상품의 detail
      public GoodsVO detail(int modelNum) throws Exception;
      
      //size별 즉시구매가
      public List<GoodsVO> priceBySize(GoodsVO goods) throws Exception;
      
      //size별 즉시판매가
      public List<GoodsVO> salesBySize(GoodsVO goods) throws Exception;
      
      //비슷한 색상/모양인 상품
      public List<GoodsVO> similarGoods(GoodsVO goods) throws Exception;
      
      //관련 상품들
      public List<GoodsVO> relativeGoods(GoodsVO goods) throws Exception;
      
      //해당 회원에 대한 카드 정보들
      public List<CardVO> listCardInfo(String userId) throws Exception;
}