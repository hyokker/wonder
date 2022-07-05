package com.ez.wonder.chatting.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ChatServiceImpl implements ChatService{

	private final ChatDAO chatDao;

	@Override
	public int insertTestChat(ChatVO chatVo) {
		return chatDao.insertTestChat(chatVo);
	}

	@Override
	public int checkChat(String userId) {
		return chatDao.checkChat(userId);
	}


	@Override
	public List<HashMap<String, Object>> selectMyChat(String userId) {
		return chatDao.selectMyChat(userId);
	}

	@Override
	public List<HashMap<String, Object>> selectChatById(HashMap<String, Object> map) {
		return chatDao.selectChatById(map);
	}
}
