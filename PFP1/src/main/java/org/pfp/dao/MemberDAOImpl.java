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
	
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".login", vo);
	}
	
	//개인정보
	@Override
	public MemberVO memberInfo(String userId) throws Exception {
		return sql.selectOne(namespace+".memberInfo", userId);
	}
	
}
