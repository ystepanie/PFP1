package org.pfp.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pfp.dto.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "org.pfp.mapper.memberMapper";
	
	//�쉶�썝 媛��엯
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	
}
