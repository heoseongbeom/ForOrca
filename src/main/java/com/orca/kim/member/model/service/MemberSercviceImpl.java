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
	@Override
	public int signupMember(Member m) {
		return mDao.signupMember(sqlSession, m);
	}
	
	// 메인 페이지 select
	@Override
	public MainPage selectMain() {
		return mDao.selectMain(sqlSession);
	}
	
	// 이메일 중복 확인
	@Override
	public int confirmEmail(String email) {
		return mDao.confirmEmail(sqlSession, email);
	}
	
	// 이메일 찾기
	@Override
	public Member selectEmail(Member m) {
		return mDao.selectEmail(sqlSession, m);
	}
	
	// 비밀버호 찾기
	@Override
	public Member selectPwd(Member m) {
		return mDao.selectPwd(sqlSession, m);
	}
	
	// 메인 페이지 update
	@Override
	public int updateMain(MainPage mp) {
		return mDao.updateMain(sqlSession, mp);
	}
	
	

}
