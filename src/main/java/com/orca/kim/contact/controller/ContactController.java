package com.orca.kim.contact.controller;

import javax.servlet.http.HttpSession;

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
			mv.addObject("errorMsg", "페이지 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	// contactUpdate 페이지 select 컨트롤러
	@RequestMapping("contactUpdateForm.co")
	public ModelAndView selectContactUpdateForm(ModelAndView mv) {
			
		Contact c = cService.selectContact();
		
		if(c != null) {
			mv.addObject("c",c).setViewName("contact/contactUpdate");
		}else {
			mv.addObject("errorMsg", "페이지 조회 실패").setViewName("common/errorPage");
			}
			return mv;
	} 
	
	// contactUpdate 페이지 update 컨트롤러
	@RequestMapping("contactUpdate.co")
	public String updateContact(Contact c, HttpSession session) {
		
		int result = cService.updateContact(c);
		
		if(result > 0) {
			session.setAttribute("alertTitle", "수정 완료");
			session.setAttribute("alertMsg", "Edit Complete");
		}else {
			session.setAttribute("alertTitle", "수정 살퍄");
			session.setAttribute("alertMsg", "Edit Fail");
		}
		return "redirect:contact.co";
	}
	
	
	
	
	
	
}
