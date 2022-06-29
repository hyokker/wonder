package com.ez.wonder.main.MainController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.aboutUs.controller.AboutUsController;
import com.ez.wonder.admin.model.AdminVO;
import com.ez.wonder.member.model.MemberService;
import com.ez.wonder.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MainController {
	private static final Logger logger
	=LoggerFactory.getLogger(MainController.class);
	
	private final MemberService memberService;
	
	
	@RequestMapping("/admin/login")
	public void adminLogin() {
		logger.info("관리자 페이지 로그인 화면");
	}
	
	@PostMapping("/admin/login")
	public String adminLogin_post(@ModelAttribute AdminVO vo, 
			HttpServletRequest request,
			HttpServletResponse response, Model model) {
		logger.info("관리자 로그인 처리, 파라미터 vo={}", vo);
		
		
		int result=memberService.checkAmdinLogin(vo.getAdminId(), vo.getAdminPwd());
		logger.info("관리자 로그인 처리, 결과 result={}", result);
		
		String msg="관리자 로그인 처리, 실패", url="/";
		if(result==MemberService.LOGIN_OK) {
			//회원정보 조회
			AdminVO adminVo=memberService.selectByAdminId(vo.getAdminId());
			logger.info("관리자 로그인 처리-회원정보 조회결과 adminVo={}", adminVo);
			
			//[1] session에 저장
			HttpSession session=request.getSession();
			session.setAttribute("adminId", adminVo.getAdminId());
			
			msg=adminVo.getAdminId()+" 관리자님 로그인되었습니다.";
			url="/admin/dashboard";
		}else if(result==MemberService.DISAGREE_PWD) {	
			msg="비밀번호가 일치하지 않습니다.";
		}else if(result==MemberService.NONE_USERID) {
			msg="해당 아이디가 존재하지 않습니다.";			
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "/common/message";
	}
	
	@RequestMapping("/")
	public String get_main() {
		return "/main/main";
	}
	
	@RequestMapping("/provision/provision")
	public String provision() {
		return "/provision/provision";
	}
	
	@RequestMapping("/provision/terms")
	public String terms() {
		return "/provision/terms";
	}
}
