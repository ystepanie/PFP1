package org.pfp.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pfp.dto.GoodsVO;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "org.pfp.mapper.goodsMapper";

	@Override
	public List<GoodsVO> listRecommand(HashMap<String, Integer> range) throws Exception {
		return sql.selectList(namespace + ".listRecommand", range);
	}

	@Override
	public List<GoodsVO> listPopular(HashMap<String, Integer> range) throws Exception {
		return sql.selectList(namespace + ".listPopular", range);
	}

	@Override
	public List<GoodsVO> listLatest(HashMap<String, Integer> range) throws Exception {
		return sql.selectList(namespace + ".listLatest", range);
	}

	@Override
	public List<GoodsVO> listCheap(HashMap<String, Integer> range) throws Exception {
		return sql.selectList(namespace + ".listCheap", range);
	}

	@Override
	public List<GoodsVO> listExpensive(HashMap<String, Integer> range) throws Exception {
		return sql.selectList(namespace + ".listExpensive", range);
	}

	@Override
	public GoodsVO detail(int modelNum) throws Exception {
		return sql.selectOne(namespace + ".detail", modelNum);
	}

	@Override
	public List<GoodsVO> priceBySize(GoodsVO goods) throws Exception {
		return sql.selectList(namespace + ".priceBySize", goods);
	}

	@Override
	public List<GoodsVO> salesBySize(GoodsVO goods) throws Exception {
		return sql.selectList(namespace + ".salesBySize", goods);
	}
	
	
}
