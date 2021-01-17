package org.pfp.dao;

import java.util.List;

import org.pfp.dto.BoardVO;
import org.pfp.dto.ReplyVO;

public interface BoardDAO {
	
	//게시물 총 갯수
	public int count() throws Exception;
		
	//게시물 목록
	public List list() throws Exception;
		
	//게시물 목록 + 페이징
	public List listPage(int displayPost, int postNum) throws Exception;
	
	//게시글 작성
	public void resist(BoardVO vo) throws Exception;
	
	//게시물 조회
	public BoardVO view(int boardCode) throws Exception;
	
	//게시물 댓글 작성
	public void registReply(ReplyVO vo) throws Exception;
	
	//게시물 댓글 리스트
	public List<ReplyVO> replyList(int boardCode) throws Exception;
	
	//게시물 댓글 삭제
	public void deleteReply(ReplyVO vo) throws Exception;
	
	//아이디 체크
	public String idCheck(int commentNum) throws Exception;
	
	//게시물 댓글 수정
	public void modifyReply(ReplyVO vo) throws Exception;
}
