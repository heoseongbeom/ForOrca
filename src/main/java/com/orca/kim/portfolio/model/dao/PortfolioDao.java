package com.orca.kim.portfolio.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.portfolio.model.vo.Portfolio;

@Repository
public class PortfolioDao {
	
	// portfolioAdd insert 구문
	public int insertPortfolio(Portfolio p, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("portfolioMapper.insertPortfolio", p);
	}

}
