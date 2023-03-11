package com.orca.kim.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.member.model.vo.Member;

@Repository
public class MemberDao {

	// 로그인 기능
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	// 회원가입 기능
	public int signupMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.signupMember", m);
	}
	

}
