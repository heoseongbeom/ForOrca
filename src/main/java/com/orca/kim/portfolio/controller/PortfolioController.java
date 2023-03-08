package com.orca.kim.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortfolioController {
	
	@RequestMapping("portfolio.me")
	public String portfolioPage() {
		return "portfolio/portfolio";
	}
	
}
