package com.orca.kim.portfolio.model.service;

import java.util.ArrayList;

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

	// portfolio 페이지 select 기능
	@Override
	public ArrayList<Portfolio> selectPortfolio(){
		return pDao.selectPortfolio(sqlSession);
	}
	
	// portfolioAdd 페이지 insert 기능
	@Override
	public int insertPortfolio(Portfolio p) {
		return pDao.insertPortfolio(p, sqlSession);
	}
	
	// portfolioUpdateForm select 기능
	@Override
	public Portfolio selectPortfolioUpdateForm(int portNo) {
		return pDao.selectPortfolioUpdateForm(portNo, sqlSession);
	}
	
	// portfolioUpdateForm update 기능
	@Override
	public int updatePortfolio(Portfolio p) {
		return pDao.updatePortfolio(p, sqlSession);
	}
	
	// portfolio delete 기능
	@Override
	public int deletePortfolio(int portNo) {
		return pDao.deletePortfolio(portNo, sqlSession);
	}
}
