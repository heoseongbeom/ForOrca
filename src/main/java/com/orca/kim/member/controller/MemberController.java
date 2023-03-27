package com.orca.kim.member.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.orca.kim.common.template.FileUpload;
import com.orca.kim.member.model.service.MemberService;
import com.orca.kim.member.model.vo.MainPage;
import com.orca.kim.member.model.vo.Member;

@Controller
public class MemberController {

		
		@Autowired
		private MemberService mService;
		
		// 로그인 컨트롤러
		@RequestMapping("login.me")
		public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
			Member loginUser = mService.loginMember(m);
			MainPage mp = mService.selectMain();
			if(loginUser != null) {
				session.setAttribute("loginUser", loginUser);
				mv.addObject("mp", mp).setViewName("main");
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
		
		// 회원가입 컨트롤러
		@RequestMapping("signup.me")
		public ModelAndView signupMember(Member m, HttpSession session, ModelAndView mv) {
			System.out.println(m);
			int result = mService.signupMember(m);
			
			//Member rm = mService.loginMember();
			
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
		
		// 관리자 메인페이지 수정페이지 접속
		@RequestMapping("mainUpdateForm.me")
		public ModelAndView adminMember(ModelAndView mv) {
			MainPage mp = mService.selectMain();
			mv.addObject("mp", mp).setViewName("mainUpdate");
			return mv;
			
		}
		
		// 메인 페이지 수정 후 호울 메소드
		@RequestMapping("mainPage.me")
		public ModelAndView updateMainPage(ModelAndView mv) {
			MainPage mp = mService.selectMain();
			mv.addObject("mp", mp).setViewName("main");
			return mv;
		}
		
		// 메인페이지 수정 기능
		@RequestMapping("updateMain.me")
		public String updateMain(MainPage mp, MultipartFile upfile, HttpSession session, Model model) {
			System.out.println(mp);
			// 새로 넘어온 첨부파일이 있을 경우
			if(!upfile.getOriginalFilename().equals("")) {
				
				// 기존에 첨부파일이 있었을 경우
				if(mp.getMainPhotoOrigin() != null) { // 기존의 첨부파일 지우기
					new File( session.getServletContext().getRealPath(mp.getMainPhotoChange()) ).delete();
				}
				
				// 새로 넘어온 첨부파일을 서버 업로드 시키기
				String saveFilePath = FileUpload.saveFile(upfile, session, "resources/uploadFiles/");
				mp.setMainPhotoOrigin(upfile.getOriginalFilename());
				mp.setMainPhotoChange(saveFilePath);
			}
			
			
			System.out.println(mp);

			int result = mService.updateMain(mp);
			System.out.println(result);
			if(result > 0) {
				session.setAttribute("alertTitle", "수정 완료");
				session.setAttribute("alertMsg", "Update Complete");
				return "redirect:mainPage.me";
			}else {
				session.setAttribute("alertMsg", "Update Fail");
				return "redirect:updateMain.me";
			}
		}
		
		// 이메일 중복 확인
		@ResponseBody
		@RequestMapping(value="confirmEmail.me", produces="application/json; charset=UTF-8")
		public String confirmEmail(String email) {
			int result = mService.confirmEmail(email);
			Map<String, Object> response = new HashMap<String, Object>();
			System.out.println(result);
			response.put("value1", email);
			response.put("value2", result);
			return new Gson().toJson(response);
		}
		
		// email,password 찾기 창 띄우기
		@RequestMapping("findEmailPwdForm.me")
		public String findEmailPwdForm() {
			return "member/findEmailPwd";
		}
		
		// email 찾기 기능 컨트롤러
		@RequestMapping("findEmail.me")
		public String selectEmail(Member m, HttpSession session) {
			Member result = mService.selectEmail(m);
			
			if(result != null) {
				session.setAttribute("alertTitle", "Email");
				session.setAttribute("alertMsg", result.getMemEmail());
				return "member/login";
			}else {
				session.setAttribute("alertTitle", "Email");
				session.setAttribute("alertMsg", "입력하신 정보에 맞는 이메일이 존재하지 않습니다.");
				return "member/findEmailPwd";
			}
		}
		
		// password 찾기 기능 컨트롤러
		@RequestMapping("findPwd.me")
		public String selectPwd(Member m, HttpSession session) {
			Member result = mService.selectPwd(m);
			
			if(result != null) {
				session.setAttribute("alertTitle", "Password");
				session.setAttribute("alertMsg", result.getMemPwd());
				return "member/login";
			}else {
				session.setAttribute("alertTitle", "Password");
				session.setAttribute("alertMsg", "입력하신 정보에 맞는 비밀번호가 존재하지 않습니다.");
				return "member/findEmailPwd";
			}
		}


}
