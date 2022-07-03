package com.ez.wonder.chatting.model;

public interface ChatService {
	int insertTestChat(ChatVO chatVo);
	int checkChat(String userId);
	ChatVO selectChatById(String userId);

}
