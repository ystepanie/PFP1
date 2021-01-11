package org.pfp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pfp.dto.DealVO;
import org.springframework.stereotype.Repository;

@Repository
public class DealDAOImpl implements DealDAO {

	@Inject
	SqlSession sql;
	
	private static String namespace = "org.pfp.mapper.dealMapper";
	
	@Override
	public List<DealVO> listDeal(int modelNum) throws Exception {
		return sql.selectList(namespace + ".listDeal", modelNum);
	}

	@Override
	public List<DealVO> dealCountPrice(int modelNum) throws Exception {
		return sql.selectList(namespace + ".dealCountPrice", modelNum);
	}

	@Override
	public List<DealVO> buyBid(int modelNum) throws Exception {
		return sql.selectList(namespace + ".buyBid", modelNum);
	}

	@Override
	public List<DealVO> salesBid(int modelNum) throws Exception {
		return sql.selectList(namespace + ".salesBid", modelNum);
	}

}
