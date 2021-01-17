package org.pfp.service;

import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.BoardDAO;
import org.pfp.dto.BoardVO;
import org.pfp.dto.ReplyVO;
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
	
	//게시물 조회
	@Override
	public BoardVO view(int boardCode) throws Exception {
		return dao.view(boardCode);
	}
	
	//게시물 댓글 작성
	@Override
	public void registReply(ReplyVO vo) throws Exception {
		dao.registReply(vo);
	}
	
	//게시물 댓글 리스트
	@Override
	public List<ReplyVO> replyList(int boardCode) throws Exception {
		return dao.replyList(boardCode);
	}
	
	//게시물 댓글 삭제
	public void deleteReply(ReplyVO vo) throws Exception {
		dao.deleteReply(vo);
	}
		
	//아이디 체크
	public String idCheck(int commentNum) throws Exception{
		return dao.idCheck(commentNum);
	}
	
	//게시물 댓글 수정
	@Override
	public void modifyReply(ReplyVO vo) throws Exception {
		dao.modifyReply(vo);
	}
}
