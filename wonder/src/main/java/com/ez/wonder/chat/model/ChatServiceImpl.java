package com.ez.wonder.chat.model;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ez.wonder.admin.model.AdminServiceImpl;

@Service
public class ChatServiceImpl {
	private static final Logger logger 
		= LoggerFactory.getLogger(AdminServiceImpl.class);
	
}
