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
	 public String get_memberList(@ModelAttribute SearchVO searchVo, @ModelAttribute MemberVO memberVo, Model model) { 
     //1
	 logger.info("�쉶�썝 紐⑸줉, �뙆�씪誘명꽣 memberVo={}", memberVo);
	 
	 PaginationInfo pagingInfo = new PaginationInfo();
	 pagingInfo.setBlockSize(5);
	 pagingInfo.setRecordCountPerPage(9);
	 pagingInfo.setCurrentPage(searchVo.getCurrentPage());
	 
	 searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
	 searchVo.setRecordCountPerPage(9);
	 
	 //2 DB �옉�뾽
	 List<MemberVO> list = adminService.selectMember(searchVo);
	 logger.info("�쉶�썝 紐⑸줉 議고쉶 寃곌낵, list.size={}", list.size());
	 
	 int totalRecord = adminService.getTotalRecord(searchVo);
	 logger.info("�쉶�썝 紐⑸줉 totalRecord={}", totalRecord);
	 
	 pagingInfo.setTotalRecord(totalRecord);
	 
	 //3 寃곌낵 ���옣
	 model.addAttribute("list", list);
	 model.addAttribute("pagingInfo", pagingInfo);
	 
	 //4
	 return "/admin/memberList"; 
	 }	
}
