package com.orca.kim.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortfolioController {
	
	// portfolio 페이지 이동 컨트롤러
	@RequestMapping("portfolio.me")
	public String portfolioPage() {
		return "portfolio/portfolio";
	}
	
	// portfolioAdd(업로드) 페이지 이동 컨트롤러
	@RequestMapping("portfolioAdd.po")
	public String portfolioAddPage() {
		return "portfolio/portfolioAdd";
	}
	
}
