package org.pfp.service;

import org.pfp.dto.MemberVO;

public interface MemberService {
	
	//회원 가입
	public void register(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	//개인정보
	public MemberVO memberInfo(String userId) throws Exception;
	
	//회원수정
	public void memberModify(MemberVO vo) throws Exception;
}
