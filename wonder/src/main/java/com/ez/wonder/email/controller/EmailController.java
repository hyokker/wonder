package com.ez.wonder.email.controller;

import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String sendEmail() {
		logger.info("이메일 발송 처리 페이지");
		String receiver="vhrgh1@daum.net"; //받는사람 이메일
		String subject="문의에 대한 답변입니다. 안녕하세요";
		String content="이메일 내용입니다. 감사합니다.";
		String sender = "vhrgh123@naver.com";//보내는 사람의 이메일 주소
										//앞서 설정한 본인의 naver email
		
		try {
			emailSender.sendEmail(subject, content, receiver, sender);
			logger.info("이메일 발송 성공");
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.info("이메일 발송 실패! : " + e.getMessage());
		}
		
		return "redirect:/";
	}
}
