package com.ez.wonder.chatting.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChatDAO {
	int insertTestChat(ChatVO chatVo);
	int checkChat(String userId);
	ChatVO selectChatById(String userId);
}
