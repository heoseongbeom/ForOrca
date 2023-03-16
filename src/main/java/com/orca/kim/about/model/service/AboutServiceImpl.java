package com.orca.kim.about.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orca.kim.about.model.dao.AboutDao;
import com.orca.kim.about.model.vo.About;

@Service
public class AboutServiceImpl implements AboutService{
	
	@Autowired
	private AboutDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// about, aboutUpdate 페이지 select 구문
	@Override
	public About selectAbout() {
		return aDao.selectAbout(sqlSession);
	}

}
