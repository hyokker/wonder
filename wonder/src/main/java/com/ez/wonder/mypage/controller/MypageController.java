package com.ez.wonder.mypage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.mypage.model.MypageService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	private final MypageService mypageService;
	
	@RequestMapping("/dash")
	public String mypage_dashboard(Model model) {
		logger.info("대시보드 페이지");
		
		MemberVO vo = mypageService.selectMemberByNo(1);
		
		model.addAttribute("vo",vo);
		
		return "/mypage/dashboard";
	}
	
	@RequestMapping("/profile")
	public void mypage_profile() {
		logger.info("프로필 페이지");
	}

	@RequestMapping("/bookmark")
	public void mypage_bookmark() {
		logger.info("찜(북마크) 페이지");
	}
}
