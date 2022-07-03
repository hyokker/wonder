package com.ez.wonder.chatting.model;

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
	public ChatVO selectChatById(String userId) {
		return chatDao.selectChatById(userId);
	}
}
