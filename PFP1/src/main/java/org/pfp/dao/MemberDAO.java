package org.pfp.dao;

import org.pfp.dto.MemberVO;

public interface MemberDAO {
	//회원가입
	public void register(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	//개인정보
	public MemberVO memberInfo(String userId) throws Exception;
		
}
