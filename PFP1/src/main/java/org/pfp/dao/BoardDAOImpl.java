package org.pfp.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pfp.dto.BoardVO;
import org.pfp.dto.LikeVO;
import org.pfp.dto.ReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	SqlSession sql;
	
	private static String namespace = "org.pfp.mapper.boardMapper";
	
	//게시물 총 갯수
	public int count() throws Exception {
		return sql.selectOne(namespace + ".count");
	}
	
	//게시물 목록
	public List list() throws Exception {
		return sql.selectList(namespace+".list");
	}

	//게시물 목록 + 페이징
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sql.selectList(namespace+".listPage", data);
	}
	
	//게시물 목록 + 무한 스크롤 
	@Override
	public List infiniteScrollDown(Integer boardCode) throws Exception {
		return sql.selectList(namespace+".infiniteScrollDown", boardCode);
	}
	
	//게시글 작성
	@Override
	public void resist(BoardVO vo) throws Exception {
		sql.insert(namespace+".resist", vo);
	}
	
	//게시물 조회
	@Override
	public BoardVO view(int boardCode) throws Exception {
		return sql.selectOne(namespace + ".view", boardCode); 
	}
	
	//게시물 댓글 작성
	@Override
	public void registReply(ReplyVO vo) throws Exception {
		sql.insert(namespace + ".registReply", vo);
	}
	
	//게시물 댓글 리스트
	@Override
	public List<ReplyVO> replyList(int boardCode) throws Exception {
		return sql.selectList(namespace + ".replyList", boardCode);
	}
	
	//게시물 댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		sql.delete(namespace + ".deleteReply", vo);
	}
		
	//아이디 체크
	@Override
	public String idCheck(int commentNum) throws Exception {
		return sql.selectOne(namespace+".replyUserIdCheck",commentNum);
	}
	
	//게시물 댓글 수정
	@Override
	public void modifyReply(ReplyVO vo) throws Exception {
		sql.update(namespace + ".modifyReply", vo);
	}
	
	//개인 게시물 목록
	@Override
	public List personalList(String userId) throws Exception {
		return sql.selectList(namespace+".personalList", userId);
	}
	
	//게시물 좋아요 조회
	public int likeView(int boardCode) throws Exception {
		return sql.selectOne(namespace+".likeView",boardCode);
	}
	
	//게시물 조회수 상승
	@Override
	public void boardViewCnt(int boardCode) throws Exception {
		sql.update(namespace+".boardViewCnt", boardCode);
	}
	
	//게시물 좋아요 추가
	@Override
	public void likeAdd(LikeVO vo) throws Exception {
		sql.insert(namespace+".likeAdd",vo);
	}
	
	//게시물 좋아요 감소 
	@Override
	public int likeCancel(int likeCheck) throws Exception {
		return sql.update(namespace+".likeCancel",likeCheck);
	}
	
	//좋아요 업데이트
	@Override
	public int likeSum(int boardCode) throws Exception {
		return sql.update(namespace + ".likeSum", boardCode);
	}
	
	//게시물 좋아요 중복 체크
	@Override
	public LikeVO like_Check(int boardCode) throws Exception {
		return sql.selectOne(namespace+".like_Check", boardCode);
	}

	//게시물 리스트 + 최신순
	@Override
	public List listPopPage(int displayPost, int postNum) throws Exception {
HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return sql.selectList(namespace + ".listPopPage", data);
	}
	
	//게시물 리스트 + 인기순 
	@Override
	public List listNewPage(int displayPost, int postNum) throws Exception {
HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return sql.selectList(namespace + ".listNewPage", data);
	}
	
	//게시물 리스트 + 조회순 
	public List listViewPage(int displayPost, int postNum) throws Exception {
HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return sql.selectList(namespace + ".listViewPage", data);
	}
}
