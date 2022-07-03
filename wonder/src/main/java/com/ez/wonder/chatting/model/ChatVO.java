package com.ez.wonder.chatting.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ChatVO {
	private int chatNo;
	private String userId;
	private int roomNo;
	private String type;
	private Timestamp timestamp;
}
