package org.pfp.service;

import java.util.List;

import javax.inject.Inject;

import org.pfp.dao.BoardDAO;
import org.pfp.dto.BoardVO;
import org.pfp.dto.LikeVO;
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
	
	//게시물 목록 + 무한 스크롤 
	@Override
	public List infiniteScrollDown(Integer boardCode) throws Exception {
		return dao.infiniteScrollDown(boardCode);
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
	
	//개인 게시물 목록
	@Override
	public List personalList(String userId) throws Exception {
		return dao.personalList(userId);
	}
	
	//게시물 좋아요 조회
	@Override
	public int likeView(int boardCode) throws Exception {
		return dao.likeView(boardCode);
	}
	
	//게시물 좋아요 추가
	@Override
	public int likeAdd(int likeCheck) throws Exception {
		return dao.likeAdd(likeCheck);
	}
	
	//게시물 좋아요 감소 
	@Override
	public int likeCancel(int likeCheck) throws Exception {
		return dao.likeCancel(likeCheck);
	}
	
	//게시물 좋아요 중복 체크
	public LikeVO like_Check(int boardCode) throws Exception {
		return dao.like_Check(boardCode);
	}

	@Override
	public List listPopPage(int displayPost, int postNum) throws Exception {
		return dao.listPopPage(displayPost, postNum);
	}

	@Override
	public List listNewPage(int displayPost, int postNum) throws Exception {
		return dao.listNewPage(displayPost, postNum);
	}
}
