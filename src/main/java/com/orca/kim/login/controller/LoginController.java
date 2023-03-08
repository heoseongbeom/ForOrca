package com.orca.kim.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.orca.kim.login.model.service.LoginService;
import com.orca.kim.login.model.vo.Login;

@Controller
public class LoginController {

		
		@Autowired
		private LoginService lService;
		
		
		@RequestMapping("login.me")
		public ModelAndView loginOrca(Login l, HttpSession session, ModelAndView mv) {
			System.out.println(l);
			Login user = lService.loginOrca(l);
			System.out.println(user);
			if(user != null) {
				session.setAttribute("user", user);
				mv.setViewName("main");
				return mv;
			}else {
				session.setAttribute("alertMsg", "아이디 또는 비밀번호가 틀렸습니다.");
				mv.setViewName("redirect:/");
				return mv;
			}
			
		}
		
		@RequestMapping("logout.me")
		public String logoutMember(HttpSession session) {
			session.invalidate();
			
			return "member/login";
		}
		
		@RequestMapping("signup.me")
		public String signupMember(HttpSession session) {
			
			return "member/signup";
			
		}


}
