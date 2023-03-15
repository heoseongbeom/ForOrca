package com.orca.kim.about.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.orca.kim.about.model.service.AboutService;

@Controller
public class AboutController {
	
	@Autowired
	private AboutService aService;
	
	@RequestMapping("about.me")
	public String aboutPage() {
		return "about/about";
	}
}
