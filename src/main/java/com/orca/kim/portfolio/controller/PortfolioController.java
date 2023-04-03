package com.orca.kim.portfolio.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.orca.kim.common.template.FileUpload;
import com.orca.kim.portfolio.model.service.PortfolioService;
import com.orca.kim.portfolio.model.vo.Portfolio;

@Controller
public class PortfolioController {
	
	@Autowired
	private PortfolioService pService;
	
	// portfolio 페이지 이동 컨트롤러
	@RequestMapping("portfolio.po")
	public String portfolioPage() {
		return "portfolio/portfolio";
	}
	
	// portfolioAdd(업로드) 페이지 이동 컨트롤러
	@RequestMapping("portfolioAdd.po")
	public String portfolioAddPage() {
		return "portfolio/portfolioAdd";
	}
	
	// portfolioAdd upload 컨트롤러
	@RequestMapping("portfolioInsert.po")
	public String insertPortfolio(Portfolio p, HttpSession session, MultipartFile upfile) {
		System.out.println(p);
		System.out.println(upfile);
		
		if(!upfile.getOriginalFilename().equals("")) {
			String saveFilePath = FileUpload.saveFile(upfile, session, "resources/uploadFiles/");
			p.setPortOriginPhoto(upfile.getOriginalFilename());
			p.setPortChangePhoto(saveFilePath);
		}
		System.out.println(p);
		int result = pService.insertPortfolio(p);
		
		if(result > 0) {
			session.setAttribute("alertTitle", "업로드 완료");
			session.setAttribute("alertMsg", "Upload Complete");
			return "redirect:portfolio.po";
		}else {
			session.setAttribute("aloertTitle", "업로드 실패");
			session.setAttribute("alertMsg", "Upload Complete");
			return "redirect/";
		}
	}
	
	
}
