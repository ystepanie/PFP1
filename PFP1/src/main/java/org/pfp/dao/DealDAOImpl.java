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
	public List<DealVO> listDeal() throws Exception {
		return sql.selectList(namespace + ".listDeal");
	}

	@Override
	public List<DealVO> dealCountPrice() throws Exception {
		return sql.selectList(namespace + ".dealCountPrice");
	}

	@Override
	public List<DealVO> buyBid() throws Exception {
		return sql.selectList(namespace + ".buyBid");
	}

	@Override
	public List<DealVO> salesBid() throws Exception {
		return sql.selectList(namespace + ".salesBid");
	}

}
