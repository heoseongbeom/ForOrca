package com.orca.kim.contact.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.orca.kim.contact.model.service.ContactService;
import com.orca.kim.contact.model.vo.Contact;

@Controller
public class ContactController {
	
	@Autowired
	private ContactService cService;
	
	// contact 페이지 select 컨트롤러
	@RequestMapping("contact.co")
	public ModelAndView selectContact(ModelAndView mv) {
		
		Contact c = cService.selectContact();
		
		if(c != null) {
			mv.addObject("c",c).setViewName("contact/contact");
		}else {
			mv.addObject("errorMsg", "상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
}
