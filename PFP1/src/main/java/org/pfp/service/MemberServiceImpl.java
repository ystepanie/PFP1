package org.pfp.service;

import javax.inject.Inject;

import org.pfp.dao.MemberDAO;
import org.pfp.dto.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	//회원가입 
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	
	//개인정보
	@Override
	public MemberVO memberInfo(String userId) throws Exception {
		return dao.memberInfo(userId);
	}

	@Override
	public void memberModify(MemberVO vo) throws Exception {
		dao.memberModify(vo);
	}
}
