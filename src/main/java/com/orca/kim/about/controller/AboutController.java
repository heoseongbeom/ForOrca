package com.orca.kim.about.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {
	
	@RequestMapping("about.me")
	public String aboutPage() {
		return "about/about";
	}
}
