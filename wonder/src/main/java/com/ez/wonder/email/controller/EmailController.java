package com.ez.wonder.email.controller;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.wonder.common.EmailSender;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/email")
public class EmailController {
	private static final Logger logger
	=LoggerFactory.getLogger(EmailSender.class);
	
	private final EmailSender emailSender;
	@RequestMapping("/send")
	public void send() {
		logger.info("이메일 연습 화면");
	}
	
	
	
	@RequestMapping("/sendEmail")
	public String sendEmail(@RequestParam String name,@RequestParam String email,
			@RequestParam String title, @RequestParam String content, Model model) {
		logger.info("이메일 발송 처리 페이지");
		String receiver="hyokker@naver.com"; //받는사람 이메일
		String subject= email+" 님의 문의 입니다.";
		String content1="제목 : "+title+"\r\n"+"내용 : "+content;
		String sender = "hyokker@naver.com";//보내는 사람의 이메일 주소
										//앞서 설정한 본인의 naver email
		
		
		String msg="이메일 발송 실패하였습니다", url="/contactUs/contactUs";
		try {
			emailSender.sendEmail(subject, content1, receiver, sender);
			logger.info("이메일 발송 성공");
			msg="이메일 발송 성공";
			url="/";
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.info("이메일 발송 실패! : " + e.getMessage());
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
}
