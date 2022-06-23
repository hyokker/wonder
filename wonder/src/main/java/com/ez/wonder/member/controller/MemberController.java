package com.ez.wonder.member.controller;

import javax.servlet.http.Cookie;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.member.model.MemberService;
import com.ez.wonder.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	
	@PostMapping("/member/login")
	public String login_post(@ModelAttribute MemberVO vo, 
			HttpServletRequest request,
			HttpServletResponse response, Model model) {
		logger.info("로그인 처리, 파라미터 vo={}", vo);
		
		
		int result=memberService.checkLogin(vo.getUserId(), vo.getPwd());
		logger.info("로그인 처리 결과 result={}", result);
		//public
		
		String msg="로그인 처리 실패", url="/";
		if(result==MemberService.LOGIN_OK) {
			//회원정보 조회
			MemberVO memVo=memberService.selectByUserid(vo.getUserId());
			logger.info("로그인 처리-회원정보 조회결과 memVo={}", memVo);
			
			//[1] session에 저장
			HttpSession session=request.getSession();
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("userName", memVo.getName());
			
			msg=memVo.getUserId()+"님 로그인되었습니다.";
			url="/";
		}else if(result==MemberService.DISAGREE_PWD) {	
			msg="비밀번호가 일치하지 않습니다.";
		}else if(result==MemberService.NONE_USERID) {
			msg="해당 아이디가 존재하지 않습니다.";			
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		logger.info("로그아웃");
		
		//session.invalidate();
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		return "redirect:/";
	}
	
	@PostMapping("/member/register")
	public String join(@ModelAttribute MemberVO vo, 
			Model model) {
		logger.info("회원가입 처리, 파라미터 vo={}",vo);


		int cnt=memberService.insertMember(vo);
		logger.info("회원가입 결과, cnt={}", cnt);

		String msg="회원가입 실패", url="/member/register";
		if(cnt>0) {
			msg="회원가입되었습니다.";
			url="/";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}
	
	@RequestMapping("/member/checkUserId")
	public String checkUserid(@RequestParam String userId,
			@RequestParam(required = false) String flag,
			Model model) {
		logger.info("아이디 중복확인, 파라미터 userId={}, flag={}", userId, flag);

		int result=0;
		if(userId!=null && !userId.isEmpty()) {
				//일반 회원 아이디 중복 확인
			result=memberService.duplicateId(userId);
			logger.info("아이디 중복확인 결과, result={}", result);
		}

		model.addAttribute("result", result);
		model.addAttribute("USABLE_ID", MemberService.USABLE_ID);
		model.addAttribute("UNUSABLE_ID", MemberService.UNUSABLE_ID);

		return "/member/checkUserId";
	}
	
	@RequestMapping("/member/kakaoLogin")
	public String kakaoLogin(@RequestParam(required = false) String email, @RequestParam(required = false) String nick,
			@RequestParam(required = false) String img,
			HttpServletRequest request,
			HttpServletResponse response,
			Model model) {
		logger.info("카카오 로그인 처리, 파라미터 email={},nick={},img={}",email,nick,img);
		
		String msg="로그인 처리 실패", url="/";
		//[1] session에 저장
		HttpSession session=request.getSession();
		session.setAttribute("userId", nick);
		session.setAttribute("userName", nick);
		
		msg=nick+"님 로그인되었습니당.";
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
		
		
	}
	
	
	@RequestMapping("/member/dupId")
	@ResponseBody
	public boolean dupId(@RequestParam String userId) {
		logger.info("아이디 중복확인, 파라미터 userId={}", userId);

	    int result=memberService.duplicateId(userId);

	    logger.info("아이디 중복확인 결과, result={}", result);

	    boolean bool=false;   
	    if(result==MemberService.USABLE_ID) {
	       bool=true;      //사용가능
	    }else if(result==MemberService.UNUSABLE_ID) {
	       bool=false;      //사용불가
	    }
	      return bool;
	   }
}	
