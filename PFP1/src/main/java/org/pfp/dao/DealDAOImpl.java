package org.pfp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pfp.dto.DealVO;
import org.pfp.dto.GoodsVO;
import org.springframework.stereotype.Repository;

@Repository
public class DealDAOImpl implements DealDAO {

	@Inject
	SqlSession sql;
	
	private static String namespace = "org.pfp.mapper.dealMapper";
	
	@Override
	public List<DealVO> listDeal(GoodsVO goods) throws Exception {
		return sql.selectList(namespace + ".listDeal", goods);
	}

	@Override
	public List<DealVO> dealCountPrice(GoodsVO goods) throws Exception {
		return sql.selectList(namespace + ".dealCountPrice", goods);
	}

	@Override
	public List<DealVO> buyBid(GoodsVO goods) throws Exception {
		return sql.selectList(namespace + ".buyBid", goods);
	}

	@Override
	public List<DealVO> salesBid(GoodsVO goods) throws Exception {
		return sql.selectList(namespace + ".salesBid", goods);
	}

}
