package com.orca.kim.member.model.service;

import com.orca.kim.member.model.vo.MainPage;
import com.orca.kim.member.model.vo.Member;

public interface MemberService {
	
	// 로그인 기능
	Member loginMember(Member m);
	
	// 회원가입 기능
	int signupMember(Member m);
	
	// 메인 페이지 select
	MainPage selectMain();
	
	// 메인 페이지 update
	int updateMain(MainPage mp);
	
	// 이메일 중복 확인
	int confirmEmail(String email);
}
