package org.pfp.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.GoodsDAO;
import org.pfp.dto.CardVO;
import org.pfp.dto.GoodsVO;
import org.springframework.stereotype.Service;

@Service
public class GoodsServiceImpl implements GoodsService {

   @Inject
   public GoodsDAO dao;
   
   @Override
   public List<GoodsVO> listRecommand(HashMap<String, Integer> range) throws Exception {
      return dao.listRecommand(range);
   }

   @Override
   public List<GoodsVO> listPopular(HashMap<String, Integer> range) throws Exception {
      return dao.listPopular(range);
   }

   @Override
   public List<GoodsVO> listLatest(HashMap<String, Integer> range) throws Exception {
      return dao.listLatest(range);
   }

   @Override
   public List<GoodsVO> listCheap(HashMap<String, Integer> range) throws Exception {
      return dao.listCheap(range);
   }

   @Override
   public List<GoodsVO> listExpensive(HashMap<String, Integer> range) throws Exception {
      return dao.listExpensive(range);
   }

   @Override
   public GoodsVO detail(int modelNum) throws Exception {
      return dao.detail(modelNum);
   }

   @Override
   public List<GoodsVO> priceBySize(GoodsVO goods) throws Exception {
      return dao.priceBySize(goods);
   }

   @Override
   public List<GoodsVO> salesBySize(GoodsVO goods) throws Exception {
      return dao.salesBySize(goods);
   }

   @Override
   public List<GoodsVO> similarGoods(GoodsVO goods) throws Exception {
      return dao.similarGoods(goods);
   }

   @Override
   public List<GoodsVO> relativeGoods(GoodsVO goods) throws Exception {
      return dao.relativeGoods(goods);
   }

   @Override
   public List<CardVO> listCardInfo(String userId) throws Exception {
      return dao.listCardInfo(userId);
   }

}