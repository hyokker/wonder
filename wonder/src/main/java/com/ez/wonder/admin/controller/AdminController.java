package com.ez.wonder.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.admin.model.AdminVO;
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
	 public String memberList(@ModelAttribute SearchVO searchVo, Model model,
			 HttpSession session) { 
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
	 
	 String adimin_Id = "admin";
	 session.setAttribute("adminId", adimin_Id);
	 String adminId = (String)session.getAttribute("adminId");
	 AdminVO adminVo = adminService.selectByAdminId(adminId);
	 logger.info("관리자 정보 조회 결과, adminVo={}", adminVo);
	 model.addAttribute("adminVo", adminVo);
	 //관리자 세션 불러오는 부분 유틸리티로 만들까? (반복돼서 코드 지저분함)
	 
	 int totalRecord = adminService.getTotalRecord(searchVo);
	 logger.info("회원 목록 totalRecord={}", totalRecord);
	 
	 pagingInfo.setTotalRecord(totalRecord);
	 
	 //3 결과 저장
	 model.addAttribute("list", list);
	 model.addAttribute("pagingInfo", pagingInfo);
	 
	 //4
	 return "/admin/memberList"; 
	 }
	 
	 @GetMapping("/editAccount")
	 public String get_editAccount(HttpSession session, Model model) {
		 
		    String adimin_Id = "admin";

		    session.setAttribute("adminId", adimin_Id);
		 
		 String adminId = (String)session.getAttribute("adminId");
		 logger.info("관리자 정보 수정 페이지");
		 
		 AdminVO adminVo = adminService.selectByAdminId(adminId);
		 logger.info("관리자 정보 조회 결과, adminVo={}", adminVo);
		 
		 model.addAttribute("adminVo", adminVo);
		 
		 return "/admin/editAccount"; 
	 }
	 
	 @PostMapping("/editAccount")
	 public String post_editAccount(@ModelAttribute AdminVO adminVo,
			 HttpSession session, Model model) {
		 
		    String adimin_Id = "admin";

		    session.setAttribute("adminId", adimin_Id);
		 
		 String adminId = (String)session.getAttribute("adminId");
		 adminVo.setAdminId(adminId);
		 logger.info("관리자 정보 수정, adminVo={}", adminVo);
		 
		 String msg = "비밀번호 체크 실패", url = "/admin/editAccount";
		 int result = adminService.checkLogin(adminVo.getAdminId(), adminVo.getAdminPwd());
		 logger.info("관리자 정보 수정 - 비밀번호 체크 결과, result={}", result);
		 
		 if(result==AdminService.LOGIN_OK) {
			 int cnt = adminService.updateAdmin(adminVo);
			 logger.info("관리자 정보 수정 결과, cnt ={}", cnt);
			 
			 if(cnt>0) {
				 msg="회원정보를 수정하였습니다.";
			 }else {
				msg="회원정보 수정을 실패하였습니다.";
			}
		 }else if (result==AdminService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다.";
		}
		 
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	 }
	 
	 @GetMapping("/dashboard")
	 public String viewDashboard() {
		 logger.info("대시보드 화면");
		 
		 return "/admin/dashboard";
	 }
	 
	 @GetMapping("/pdList")
	 public String viewPdList() {
		 logger.info("대시보드 화면");
		 
		 return "/admin/pdList";
	 }
	 
	 @GetMapping("/nonApprovalList")
	 public String viewNonApprovalList() {
		 logger.info("대시보드 화면");
		 
		 return "/admin/nonApprovalList";
	 }
	 
	 @GetMapping("/createAdmin")
	 public String viewCreateAdmin() {
		 logger.info("대시보드 화면");
		 
		 return "/admin/createAdmin";
	 }
}
