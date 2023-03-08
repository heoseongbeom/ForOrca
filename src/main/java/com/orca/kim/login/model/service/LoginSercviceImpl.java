package com.orca.kim.login.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orca.kim.login.model.dao.LoginDao;
import com.orca.kim.login.model.vo.Login;

@Service
public class LoginSercviceImpl implements LoginService{
	
	@Autowired
	private LoginDao lDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Login loginOrca(Login l) {
		return lDao.loginOrca(sqlSession, l);
	}
	

}
