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
	@RequestMapping("about.ab")
	public ModelAndView selectAbout(ModelAndView mv) {
		
		About a = aService.selectAbout();
		mv.addObject("a", a).setViewName("about/about");
		return mv;
	}
	
	// aboutUpdate 페이지 이동 및 select 컨트롤러
	@RequestMapping("aboutUpdateForm.ab")
	public ModelAndView aboutUpdateForm(ModelAndView mv) {
		About a = aService.selectAbout();
		mv.addObject("a", a).setViewName("about/aboutUpdate");
		return mv;
	}
	
	
	// about 페이지 update 컨트롤러
	@RequestMapping("aboutUpdate.ab")
	public String updateAbout(About a, HttpSession session,  MultipartFile upfile) {
		
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
		
		int result = aService.updateAbout(a);
		
		if(result > 0) {
			session.setAttribute("alertTitle", "수정 완료");
			session.setAttribute("alertMsg", "Update Complete");
			return "redirect:about.ab";
		}else {
			session.setAttribute("alertMsg", "Update Fail");
			return "redirect/";
		}
	}
	
	
		

}
	

