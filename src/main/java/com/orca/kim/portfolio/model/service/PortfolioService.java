package com.orca.kim.portfolio.model.service;

import java.util.ArrayList;

import com.orca.kim.portfolio.model.vo.Portfolio;

public interface PortfolioService {

	// portfolio 페이지 select 기능
	ArrayList<Portfolio> selectPortfolio();
	
	// portfolioAdd 페이지 insert 기능
	int insertPortfolio(Portfolio p);
	
	// portfolioUpdateForm 페이지 select 기능
	Portfolio selectPortfolioUpdateForm(int portNo );

}
