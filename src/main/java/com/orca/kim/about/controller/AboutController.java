package com.orca.kim.about.controller;


import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.orca.kim.about.model.service.AboutService;
import com.orca.kim.about.model.vo.About;
import com.orca.kim.common.template.FileUpload;

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
		mv.addObject("a", a).setViewName("about/aboutUpdate");
		return mv;
	}
	
	
	// about 페이지 update 컨트롤러
	@RequestMapping("aboutUpdate.me")
	public String updateAbout(About a, HttpSession session,  MultipartFile upfile) {
		
		
		System.out.println(upfile);
		
		if(!upfile.getOriginalFilename().equals("")) {
			
			// 기존에 첨부파일이 있었을 경우
			if(a.getAboutProfileOriginImg() != null) { // 기존의 첨부파일 지우기
				new File( session.getServletContext().getRealPath(a.getAboutProfileChangeImg()) ).delete();
			}
			
			// 새로 넘어온 첨부파일을 서버 업로드 시키기
			String saveFilePath = FileUpload.saveFile(upfile, session, "resources/uploadFiles/");
			a.setAboutProfileOriginImg(upfile.getOriginalFilename());
			a.setAboutProfileChangeImg(saveFilePath);
		}
		
//		if(!file1.getOriginalFilename().equals("")) {
//			
//			if(a.getAboutStoryOriginImg1() != null) {
//				new File( session.getServletContext().getRealPath(a.getAboutStoryChangeImg1()) ).delete();
//			}
//			
//			String saveFilePath = FileUpload.saveFile(file1, session, "resources/uploadFiles/");
//			a.setAboutStoryOriginImg1(file1.getOriginalFilename());
//			a.setAboutStoryChangeImg1(saveFilePath);
//		}
//		
//		if(!file2.getOriginalFilename().equals("")) {
//			
//			if(a.getAboutStoryOriginImg2() != null) {
//				new File( session.getServletContext().getRealPath(a.getAboutStoryChangeImg2()) ).delete();
//			}
//			
//			String saveFilePath = FileUpload.saveFile(file2, session, "resources/uploadFiles/");
//			a.setAboutStoryOriginImg2(file2.getOriginalFilename());
//			a.setAboutStoryChangeImg2(saveFilePath);
//		}
//
//		if(!file3.getOriginalFilename().equals("")) {
//				
//				if(a.getAboutStoryOriginImg3() != null) {
//					new File( session.getServletContext().getRealPath(a.getAboutStoryChangeImg3()) ).delete();
//				}
//				
//				String saveFilePath = FileUpload.saveFile(file3, session, "resources/uploadFiles/");
//				a.setAboutStoryOriginImg3(file3.getOriginalFilename());
//				a.setAboutStoryChangeImg3(saveFilePath);
//		}
//			
//		if(!file4.getOriginalFilename().equals("")) {
//				
//				if(a.getAboutStoryOriginImg4() != null) {
//					new File( session.getServletContext().getRealPath(a.getAboutStoryChangeImg4()) ).delete();
//				}
//				
//				String saveFilePath = FileUpload.saveFile(file4, session, "resources/uploadFiles/");
//				a.setAboutStoryOriginImg4(file4.getOriginalFilename());
//				a.setAboutStoryChangeImg4(saveFilePath);
//		}
//			
//		if(!file5.getOriginalFilename().equals("")) {
//				
//				if(a.getAboutStoryOriginImg5() != null) {
//					new File( session.getServletContext().getRealPath(a.getAboutStoryChangeImg5()) ).delete();
//				}
//				
//				String saveFilePath = FileUpload.saveFile(file5, session, "resources/uploadFiles/");
//				a.setAboutStoryOriginImg5(file5.getOriginalFilename());
//				a.setAboutStoryChangeImg5(saveFilePath);
//		}
		
		System.out.println(a);
		int result = aService.updateAbout(a);
		
		if(result > 0) {
			session.setAttribute("alertTitle", "수정 완료");
			session.setAttribute("alertMsg", "Update Complete");
			return "redirect:about.me";
		}else {
			session.setAttribute("alertMsg", "Update Fail");
			return "redirect/";
		}
	}
	
	
		

}
	

