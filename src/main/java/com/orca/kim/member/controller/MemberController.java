package com.orca.kim.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.orca.kim.member.model.service.MemberService;
import com.orca.kim.member.model.vo.Member;

@Controller
public class MemberController {

		
		@Autowired
		private MemberService mService;
		
		
		@RequestMapping("login.me")
		public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
			System.out.println(m);
			Member loginUser = mService.loginMember(m);
			System.out.println(loginUser);
			if(loginUser != null) {
				session.setAttribute("loginUser", loginUser);
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
