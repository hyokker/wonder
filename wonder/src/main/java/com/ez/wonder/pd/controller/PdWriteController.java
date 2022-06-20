package com.ez.wonder.pd.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.pd.model.ProductService;
import com.ez.wonder.pd.model.ProductVO;
import com.ez.wonder.skill.model.FrameworkVO;
import com.ez.wonder.skill.model.LanguageVO;
import com.ez.wonder.skill.model.SkillService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/pd")
@RequiredArgsConstructor
public class PdWriteController {
	private static final Logger logger
	=LoggerFactory.getLogger(PdWriteController.class);

	private final SkillService skillService;
	

	@GetMapping("/pdWrite")
	public void pdWrite(Model model) {
		logger.info("상품 등록화면");
		
		//2
		List<LanguageVO> langList=skillService.allLanguage();
		logger.info("언어 조회 결과, langList.size={}", langList.size());
		
		List<FrameworkVO> frameList=skillService.allFrame();
		logger.info("언어 조회 결과, langList.size={}", frameList.size());
		
		//3
		model.addAttribute("langList", langList);
		model.addAttribute("frameList", frameList);
		
		
	}
	
	@PostMapping("/pdWrite")
	public void pd_Write_post(HttpServletRequest httpServletRequest, Model model) {
		logger.info("상품 등록");
		
		String pdTitle = httpServletRequest.getParameter("pdTitle");
		logger.info(pdTitle);

		String delType = httpServletRequest.getParameter("delType");
		logger.info(delType);

		String[] langs = httpServletRequest.getParameterValues("langchbox");
		for(String lang : langs)
			logger.info("langchbox : " + lang);

		String[] frames = httpServletRequest.getParameterValues("framechbox");
		for(String frame : frames)
			logger.info("framechbox : " + frame.toString());
		
	}
	
	
		
		
}
