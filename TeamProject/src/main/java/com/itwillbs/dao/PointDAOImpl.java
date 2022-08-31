package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class PointDAOImpl implements PointDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace="com.itwillbs.mappers.pointMapper";
	
	@Override
	public int updatePoint(MemberDTO memberDTO) {
		System.out.println("PointDAOImpl updatePoint()");
		return sqlSession.update(namespace+".updatePoint", memberDTO);
	}

}
