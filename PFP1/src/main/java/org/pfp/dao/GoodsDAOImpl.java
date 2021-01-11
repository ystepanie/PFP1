package org.pfp.dao;

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
	public List<GoodsVO> listRecommand() throws Exception {
		return sql.selectList(namespace + ".listRecommand");
	}

	@Override
	public List<GoodsVO> listPopular() throws Exception {
		return sql.selectList(namespace + ".listPopular");
	}

	@Override
	public List<GoodsVO> listLatest() throws Exception {
		return sql.selectList(namespace + ".listLatest");
	}

	@Override
	public List<GoodsVO> listCheap() throws Exception {
		return sql.selectList(namespace + ".listCheap");
	}

	@Override
	public List<GoodsVO> listExpensive() throws Exception {
		return sql.selectList(namespace + ".listExpensive");
	}

	@Override
	public GoodsVO detail(int modelNum) throws Exception {
		return sql.selectOne(namespace + ".detail", modelNum);
	}

	@Override
	public List<GoodsVO> priceBySize(int modelNum) throws Exception {
		return sql.selectList(namespace + ".priceBySize", modelNum);
	}
	
	
}
