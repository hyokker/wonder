package com.ez.wonder.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.admin.model.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger
		= LoggerFactory.getLogger(AdminController.class);
	
	/* private final AdminService adminService; */
	

	 @GetMapping("/memberList") public String get_memberList() { 
     //1
	 logger.info("회원조회 화면");
	 
	 //2 DB 작업
	 
	 
	 //3 List<MemberVO> list = Adm
	 
	 return "/admin/memberList"; }

	
	
	
}
