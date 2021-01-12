package org.pfp.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pfp.dto.BoardVO;
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
		HashMap data = new HashMap();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sql.selectList(namespace+".listPage", data);
	}
	
	//게시글 작성
	@Override
	public void resist(BoardVO vo) throws Exception {
		sql.insert(namespace+".resist", vo);
	}
	
	//게시물 조회
	public BoardVO view(int boardCode) throws Exception {
		return sql.selectOne(namespace + ".view", boardCode); 
	}
}
