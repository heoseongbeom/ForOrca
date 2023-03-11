package com.orca.kim.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orca.kim.member.model.dao.MemberDao;
import com.orca.kim.member.model.vo.MainPage;
import com.orca.kim.member.model.vo.Member;

@Service
public class MemberSercviceImpl implements MemberService{
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 로그인 기능
	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);
	}
	
	// 회원가입 기능
	public int signupMember(Member m) {
		return mDao.signupMember(sqlSession, m);
	}
	
	// 메인 페이지 select
	public MainPage selectMain() {
		return mDao.selectMain(sqlSession);
	}

}
