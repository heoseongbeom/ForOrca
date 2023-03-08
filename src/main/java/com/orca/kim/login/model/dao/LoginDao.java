package com.orca.kim.login.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.login.model.vo.Login;

@Repository
public class LoginDao {

	public Login loginOrca(SqlSessionTemplate sqlSession, Login l) {
		System.out.println(l);
		return sqlSession.selectOne("loginMapper.loginOrca", l);
	}
	

}
