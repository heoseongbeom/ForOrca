package com.orca.kim.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.member.model.vo.Member;

@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		System.out.println(m);
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	

}
