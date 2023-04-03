package com.orca.kim.portfolio.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orca.kim.portfolio.model.dao.PortfolioDao;
import com.orca.kim.portfolio.model.vo.Portfolio;

@Service
public class PortfolioServiceImpl implements PortfolioService{
	
	@Autowired
	private PortfolioDao pDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertPortfolio(Portfolio p) {
		return pDao.insertPortfolio(p, sqlSession);
	}
}
