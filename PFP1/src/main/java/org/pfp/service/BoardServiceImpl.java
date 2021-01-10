package org.pfp.service;

import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.BoardDAO;
import org.pfp.dto.BoardVO;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;
	
	
	//게시물 총 갯수
	@Override
	public int count() throws Exception {
		return dao.count();
	}
	
	//게시물 목록
	@Override
	public List list() throws Exception {
		return dao.list();
	}
	
	//게시물 목록 + 페이징
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}
	
	//게시글 등록
	@Override
	public void resist(BoardVO vo) throws Exception {
		dao.resist(vo);
	}

}
