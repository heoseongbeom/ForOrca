package com.orca.kim.about.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.orca.kim.about.model.service.AboutService;
import com.orca.kim.about.model.vo.About;

@Controller
public class AboutController {
	
	@Autowired
	private AboutService aService;
	
	// about 패이지 이동 select 컨트롤러
	@RequestMapping("about.me")
	public ModelAndView selectAbout(ModelAndView mv) {
		
		About a = aService.selectAbout();
		System.out.println(a);
		mv.addObject("a", a).setViewName("about/about");
		return mv;
	}
	
	// aboutUpdate 페이지 이동 및 select 컨트롤러
	@RequestMapping("aboutUpdateForm.me")
	public ModelAndView aboutUpdateForm(ModelAndView mv) {
		About a = aService.selectAbout();
		System.out.println(a);
		mv.addObject("a", a).setViewName("about/aboutUpdate");
		return mv;
	}
	
}
