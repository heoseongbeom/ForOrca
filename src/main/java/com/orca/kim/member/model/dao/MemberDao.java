package com.orca.kim.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.member.model.vo.MainPage;
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
	
	// 메인 페이지 select
	public MainPage selectMain(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("mainMapper.selectMain");
	}
	
	// 메인 페이지 update
	public int updateMain(SqlSessionTemplate sqlSession, MainPage mp) {
		return sqlSession.update("mainMapper.updateMain", mp);
	}
	
	// 이메일 중복 확인
	public int confirmEmail(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("memberMapper.confirmEmail", email);
	}

}
