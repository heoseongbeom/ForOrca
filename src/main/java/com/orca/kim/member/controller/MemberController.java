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
		
		// 로그인 컨트롤러
		@RequestMapping("login.me")
		public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
			Member loginUser = mService.loginMember(m);
			if(loginUser != null) {
				session.setAttribute("loginUser", loginUser);
				mv.setViewName("main");
				return mv;
			}else {
				session.setAttribute("alertTitle", "로그인 실패");
				session.setAttribute("alertMsg", "아이디 또는 비밀번호가 틀렸습니다.");
				mv.setViewName("redirect:/");
				return mv;
			}
			
		}
		
		// 로그아웃 컨트롤러
		@RequestMapping("logout.me")
		public String logoutMember(HttpSession session) {
			session.invalidate();
			
			return "member/login";
		}
		
		// 회워가입 컨트롤러
		@RequestMapping("signup.me")
		public ModelAndView signupMember(Member m, HttpSession session, ModelAndView mv) {
			
			int result = mService.signupMember(m);
			
			if(result > 0) {
				session.setAttribute("alertTitle", "회원가입 성공");
				session.setAttribute("alertMsg", "Sign Up complete.");
				mv.setViewName("redirect:/");
				return mv;
			}else {
				session.setAttribute("alertTitle", "회원가입 실패");
				session.setAttribute("alertMsg", "sign Up Fail.");
				mv.setViewName("redirect:/");
				return mv;
				
			}
			
		}


}
