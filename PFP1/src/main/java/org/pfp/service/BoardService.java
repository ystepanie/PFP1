package org.pfp.service;

import java.util.List;

public interface BoardService {
	
	//게시물 총 개수
	public int count() throws Exception;
	
	//게시물 목록
	public List list() throws Exception;
	
	//게시물 목록 + 페이징
	public List listPage(int displayPost, int postNum) throws Exception;
	
	
}
