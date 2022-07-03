package com.ez.wonder.chatting;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChattingController {
	private static final Logger logger = LoggerFactory.getLogger(ChattingController.class);
	
	
	@RequestMapping("/testChat")
	
	public String testChat(Model model) {
		logger.info("채팅테스트화면");
		
		return "/mypage/testChat"; 
	}
}
