package com.ez.wonder.chatting.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.chatting.model.ChatCommentVO;
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
	public ChatCommentVO createTest(@RequestParam("rUserId") String rUserId, HttpSession session) {
		String sUserId = (String) session.getAttribute("userId");
		logger.info("test채팅방 생성 ajax, 파라미터 상대방아이디={},내아이디={}",rUserId,sUserId);
		
		//해당 유저와 채팅방이 존재하는지 체크
		int checkCnt=chatService.checkChat(rUserId);
		logger.info("방존재 체크 0이면 없음 ={}",checkCnt);
		
		ChatVO chatVo=new ChatVO();
		List<ChatCommentVO> list = null;
		ChatCommentVO commentVo = new ChatCommentVO();
		HashMap<String, Object> map = new HashMap<>();
		map.put("sUserId", sUserId);
		map.put("rUserId", rUserId);
		logger.info("파라미터 map={}",map);
		
		/*
		 * if(checkCnt==0) {//방이 없을경우 chatVo.setUserId(rUserId); int
		 * cnt=chatService.insertTestChat(chatVo); logger.info("test채팅방 생성 완료");
		 * 
		 * if(cnt>0) { commentVo=chatService.selectChatById(map);
		 * logger.info("채팅방 정보 commentVo={}",commentVo); } }else { //방이 있을경우
		 * logger.info("이미 생성된 채팅방이 존재합니다"); commentVo=chatService.selectChatById(map);
		 * logger.info("채팅방 정보 commentVo={}",commentVo); }
		 */
		/*
		 * if(checkCnt==0) {//방이 없을경우 chatVo.setUserId(rUserId); int
		 * cnt=chatService.insertTestChat(chatVo); logger.info("test채팅방 생성 완료");
		 * 
		 * if(cnt>0) { list=chatService.selectChatCommentById(map);
		 * logger.info("채팅방 정보 list.size={}",list.size()); } }else { //방이 있을경우
		 * logger.info("이미 생성된 채팅방이 존재합니다");
		 * list=chatService.selectChatCommentById(map);
		 * logger.info("채팅방 정보 list.size={}",list.size()); }
		 * 
		 */	
		return commentVo;
	}
	
	
	@ResponseBody
	@RequestMapping("/chatDetail")
	public String chatDetail(@RequestParam("rUserId") String rUserId, HttpSession session) {
		String sUserId = (String) session.getAttribute("userId");
		logger.info("채팅 detail ajax, 파라미터 상대방아이디={},내아이디={}",rUserId,sUserId);
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		map.put("rUserId", rUserId);
		map.put("sUserId", sUserId);
		logger.info("파라미터 map={}",map);
		
		List<HashMap<String, Object>> list = chatService.selectChatById(map);
		String html ="";
		for(int i=0;i<list.size();i++) {
			HashMap<String, Object> testMap = list.get(i);
			logger.info("testMap={}",testMap);
			logger.info("content={}",testMap.get("CONTENT"));
			
			html += "<div class='message-plunch me'>";
			html += "	<div class='dash-msg-avatar margin-top-10'><i class='fa fa-user' style='font-size: 3em'></i></div>";
			html += "	<div class='dash-msg-text'><p>"+testMap.get("CONTENT")+"</p></div>";
			html += "</div>";
			html += "";
		}
		/* logger.info("상대방과의 채팅 메세지 갯수, list.size()={}",list.size()); */
		
	
		return html;
	}
	
}
