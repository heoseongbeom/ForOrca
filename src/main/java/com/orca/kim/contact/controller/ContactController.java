package com.orca.kim.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	
	@RequestMapping("contact.me")
	public String contactPage() {
		return "contact/contact";
				
	}
}
