package com.orca.kim.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FinanceController {
	
	@RequestMapping("finance.me")
	public String financePage() {
		return "finance/finance";
	}
	
}
