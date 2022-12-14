package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LikeDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	//마이바티스 객체생성
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.boardMapper";

	@Override
	public void insertBoard(BoardDTO boardDTO) {
		sqlSession.insert(namespace+".insertBoard", boardDTO);
	}

	@Override
	public Integer getMaxNum() {
		return sqlSession.selectOne(namespace+".getMaxNum");
	}

	@Override
	public List<BoardDTO> getBoardList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace+".getBoardList",pageDTO);
	}

	@Override
	public int getBoardCount() {
		return sqlSession.selectOne(namespace+".getBoardCount");
	}
	@Override
	public BoardDTO getBoard(int boardNum) {
		return sqlSession.selectOne(namespace+".getBoard", boardNum);
	}

	@Override
	public BoardDTO numCheck(BoardDTO boardDTO) {
		System.out.println(boardDTO.getBoardNum());
		System.out.println(boardDTO.getUserNicknm());
		return sqlSession.selectOne(namespace+".numCheck", boardDTO);
	}

	@Override
	public void updateBoard(BoardDTO boardDTO) {
		sqlSession.update(namespace+".updateBoard", boardDTO);
	}

	@Override
	public void updateFile(BoardDTO boardDTO) {
		sqlSession.update(namespace+".updateFile", boardDTO);
		
	}
	
	@Override
	public void deleteBoard(BoardDTO boardDTO) {
		sqlSession.delete(namespace+".deleteBoard", boardDTO);
	}

	@Override
	public LikeDTO countLike(LikeDTO likeDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".countLike", likeDTO);
	}

}
