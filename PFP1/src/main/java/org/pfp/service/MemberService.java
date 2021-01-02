package org.pfp.service;

import org.pfp.dto.MemberVO;

public interface MemberService {
	
	//회원 가입
	public void register(MemberVO vo) throws Exception;

}
