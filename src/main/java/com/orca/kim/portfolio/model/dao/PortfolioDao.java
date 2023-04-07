package com.orca.kim.portfolio.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.portfolio.model.vo.Portfolio;

@Repository
public class PortfolioDao {
	
	// portfolio select 구문
	public ArrayList<Portfolio> selectPortfolio(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("portfolioMapper.selectPortfolio");
	}
	
	// portfolioAdd insert 구문
	public int insertPortfolio(Portfolio p, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("portfolioMapper.insertPortfolio", p);
	}
	
	// portfolioUpadteForm select 구문
	public Portfolio selectPortfolioUpdateForm(int portNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("portfolioMapper.selectPortfolioUpdateForm", portNo);
	}
	
	// portfolioUpdateForm update 구문
	public int updatePortfolio(Portfolio p, SqlSessionTemplate sqlSession) {
		return sqlSession.update("portfolioMapper.updatePortfolio", p);
	}
	
	// portfolio delete 구문
	public int deletePortfolio(int portNo, SqlSessionTemplate sqlSession) {
		return sqlSession.delete("portfolioMapper.deletePortfolio", portNo);
	}
	
	

}
