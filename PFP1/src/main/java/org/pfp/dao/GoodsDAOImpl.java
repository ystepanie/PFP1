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
	
	
}
