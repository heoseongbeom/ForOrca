package com.orca.kim.about.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.about.model.vo.About;

@Repository
public class AboutDao {
	
	// about, aboutUpdate 페이지 select 구문
	public About selectAbout(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("aboutMapper.selectAbout");
	}

}
