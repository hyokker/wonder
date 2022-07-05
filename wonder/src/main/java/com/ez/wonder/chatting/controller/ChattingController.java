package com.ez.wonder.chatting.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.chatting.model.ChatService;
import com.ez.wonder.chatting.model.ChatVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/chat")
public class ChattingController {
	private static final Logger logger = LoggerFactory.getLogger(ChattingController.class);
	
	private final ChatService chatService;
	
	
	@RequestMapping("/testChat")
	public String testChat(Model model) {
		logger.info("채팅테스트화면");
		
		return "/mypage/testChat"; 
	}
	
	
	@ResponseBody
	@RequestMapping("/createTestChat")
	public ChatVO createTest(String userId) {
		logger.info("test채팅방 생성 ajax, 파라미터 userId={}",userId);
		
		//해당 유저와 채팅방이 존재하는지 체크
		int checkCnt=chatService.checkChat(userId);
		ChatVO chatVo=new ChatVO();
		
		boolean bool = false;
		if(checkCnt==0) {//방이 없을경우
			chatVo.setUserId(userId);
			int cnt=chatService.insertTestChat(chatVo);
			logger.info("test채팅방 생성 완료");
			
			if(cnt>0) {
				bool=true;
				chatVo=chatService.selectChatById(userId);
				logger.info("채팅방 정보 chatVo={}",chatVo);
			}else {
				bool=false;
			}
		}else { //방이 있을경우
			logger.info("이미 생성된 채팅방이 존재합니다");
			chatVo=chatService.selectChatById(userId);
			logger.info("채팅방 정보 chatVo={}",chatVo);
		}
		
		return chatVo;
	}
	
}
