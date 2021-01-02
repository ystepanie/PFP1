package org.pfp.dao;

import org.pfp.dto.MemberVO;

public interface MemberDAO {
	//회원가입
	public void register(MemberVO vo) throws Exception;
		
}
