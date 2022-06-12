package com.ez.wonder.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.common.PaginationInfo;
import com.ez.wonder.common.SearchVO;
import com.ez.wonder.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
	private static final Logger logger
		= LoggerFactory.getLogger(AdminController.class);
	
	private final AdminService adminService;
	

	 @RequestMapping("/memberList") 
	 public String memberList(@ModelAttribute SearchVO searchVo, Model model) { 
     //1
	 logger.info("회원 목록, 파라미터 searchVo={}", searchVo);
	 
	 PaginationInfo pagingInfo = new PaginationInfo();
	 pagingInfo.setBlockSize(5);
	 pagingInfo.setRecordCountPerPage(9);
	 pagingInfo.setCurrentPage(searchVo.getCurrentPage());
	 
	 searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
	 searchVo.setRecordCountPerPage(9);
	 
	 //2 DB 작업
	 List<MemberVO> list = adminService.selectMember(searchVo);
	 logger.info("회원 목록 조회 결과, list.size={}", list.size());
	 
	 int totalRecord = adminService.getTotalRecord(searchVo);
	 logger.info("회원 목록 totalRecord={}", totalRecord);
	 
	 pagingInfo.setTotalRecord(totalRecord);
	 
	 //3 결과 저장
	 model.addAttribute("list", list);
	 model.addAttribute("pagingInfo", pagingInfo);
	 
	 //4
	 return "/admin/memberList"; 
	 }	
}
