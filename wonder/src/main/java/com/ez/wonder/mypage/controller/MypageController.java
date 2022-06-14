package com.ez.wonder.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@RequestMapping("/dashboard")
	public void mypage_dashboard(HttpServletRequest request,Model model) { //효건님이 로그인으로 세션넘기는거 만드시면 바꿔야함!!! @@@@@@@@@@@@@@@@@@@@@
		logger.info("대시보드 페이지");
		
		MemberVO vo = mypageService.selectMemberByNo(1);
		HttpSession session = request.getSession();
		session.setAttribute("userId", vo.getUserId());
		session.setAttribute("pwd", vo.getPwd());
		
		model.addAttribute("vo",vo);
	}
	
	@GetMapping("/profile")
	public void mypage_profile_get(HttpSession session, Model model) {
		logger.info("프로필 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@PostMapping("/profile")
	public String mypage_profile_post(@ModelAttribute MemberVO vo, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("userId");
		vo.setUserId(userId);
		logger.info("프로필 수정 처리, vo={}",vo);
		
		int cnt=mypageService.updateMember(vo);
		logger.info("cnt={}",cnt);
		String msg="프로필 수정 실패", url="/mypage/profile";
		if(cnt>0) {
			msg="프로필 수정 성공";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "/common/message";
	}
	

	@RequestMapping("/bookmark")
	public void mypage_bookmark(HttpSession session,Model model) {
		logger.info("찜(북마크) 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@RequestMapping("/transaction")
	public void mypage_transaction(HttpSession session,Model model) {
		logger.info("거래 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@RequestMapping("/chatting")
	public void mypage_chatting(HttpSession session,Model model) {
		logger.info("채팅 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@RequestMapping("/changePwd")
	public void mypage_changePwd(HttpSession session,Model model) {
		logger.info("암호 변경 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
}
