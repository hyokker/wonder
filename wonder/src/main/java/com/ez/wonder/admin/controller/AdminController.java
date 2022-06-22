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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.jsf.FacesContextUtils;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.admin.model.AdminVO;
import com.ez.wonder.common.PaginationInfo;
import com.ez.wonder.common.SearchVO;
import com.ez.wonder.form.model.FormVo;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.pd.model.ProductService;
import com.ez.wonder.pd.model.ProductVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	private final AdminService adminService;

	@RequestMapping("/dashboard")
	public void dashboard() {
		logger.info("관리자 페이지 메인 화면");
	}

	// 1. 회원 목록 조회
	@RequestMapping("/memberList")
	public String memberList(@ModelAttribute SearchVO searchVo, Model model, HttpSession session) {
		logger.info("회원 목록, 파라미터 searchVo={}", searchVo);

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(5);
		pagingInfo.setRecordCountPerPage(9);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(9);

		List<MemberVO> list = adminService.selectMember(searchVo);
		logger.info("회원 목록 조회 결과, list.size={}", list.size());

		String adimin_Id = "admin";
		session.setAttribute("adminId", adimin_Id);
		String adminId = (String) session.getAttribute("adminId");
		AdminVO adminVo = adminService.selectByAdminId(adminId);
		logger.info("관리자 정보 조회 결과, adminVo={}", adminVo);
		model.addAttribute("adminVo", adminVo);
		// 관리자 세션 불러오는 부분 유틸리티로 만들까? (반복돼서 코드 지저분함)

		int totalRecord = adminService.getTotalRecord(searchVo);
		logger.info("회원 목록 totalRecord={}", totalRecord);

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);

		return "/admin/memberList";
	}

	// 2. 최고 관리자 정보 수정 페이지 불러오기
	@GetMapping("/editAccount")
	public String get_editAccount(HttpSession session, Model model) {
		logger.info("관리자 정보 수정 페이지");

		String adimin_Id = "admin";
		session.setAttribute("adminId", adimin_Id);

		String adminId = (String) session.getAttribute("adminId");
		AdminVO adminVo = adminService.selectByAdminId(adminId);
		logger.info("관리자 정보 조회 결과, adminVo={}", adminVo);

		model.addAttribute("adminVo", adminVo);

		return "/admin/editAccount";
	}

	@ResponseBody
	@RequestMapping("/confirmPrePwd")
	public boolean confirmPrePwd(HttpSession session, @RequestParam String adminPwd) {
		String adimin_Id = "admin";
		session.setAttribute("adminId", adimin_Id);
		String adminId = (String) session.getAttribute("adminId");

		logger.info("관리자 비밀번호 중복확인 adminId={}, adminPwd={}", adminId, adminPwd);

		int result = adminService.checkLogin(adminId, adminPwd);
		logger.info("관리자 비밀번호 중복확인 결과 result={}", result);

		boolean bool = false;
		if (result == AdminService.LOGIN_OK) {
			bool = true;
		} else if (result == AdminService.DISAGREE_PWD) {
			bool = false;
		}

		return bool;
	}

	// 3. 최고 관리자 정보 수정 처리
	@PostMapping("/editAccount")
	public String post_editAccount(@ModelAttribute AdminVO adminVo, HttpSession session, Model model) {
		String adminId = (String) session.getAttribute("adminId");
		adminVo.setAdminId(adminId);
		logger.info("관리자 정보 수정, adminVo={}", adminVo);

		String msg = "", url = "/admin/editAccount";

		int result = adminService.checkLogin(adminVo.getAdminId(), adminVo.getAdminPwd());
		logger.info("관리자 정보 수정 - 비밀번호 체크 결과, result={}", result);

		if (result == AdminService.LOGIN_OK) {
			int cnt = adminService.updateAdmin(adminVo);
			logger.info("관리자 정보 수정 결과, cnt ={}", cnt);

			if (cnt > 0) {
				msg = "회원정보를 수정하였습니다.";
			} else {
				msg = "회원정보 수정을 실패하였습니다.";
			}
		} else if (result == AdminService.DISAGREE_PWD) {
			msg = "비밀번호가 일치하지 않습니다.";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	// 부서별 관리자 화면(리스트를 만들어야 하나)
	@GetMapping("/createAdmin")
	public String get_createAdmin() {
		logger.info("부서별 관리자 생성 화면");

		return "/admin/createAdmin";
	}

	@ResponseBody
	@RequestMapping("/dupAdminId")
	public boolean dupAdminId(@RequestParam String adminId) {
		logger.info("부서별 관리자 아이디 중복확인 adminId={}", adminId);

		int result = adminService.dupAdminId(adminId);
		logger.info("부서별 관리자 아이디 중복확인 결과 result={}", result);

		boolean bool = false;
		if (result == AdminService.USABLE_ID) {
			bool = true;
		} else if (result == AdminService.UNUSABLE_ID) {
			bool = false;
		}

		return bool;
	}

	@PostMapping("/createAdmin")
	public String post_createAdmin(@ModelAttribute AdminVO adminVo, Model model) {
		logger.info("부서별 관리자 생성, 파라미터 adminVo={}", adminVo);

		int cnt = adminService.insertAdmin(adminVo);
		logger.info("부서별 관리자 생성 결과, cnt={}", cnt);

		String msg = "", url = "/admin/createAdmin";
		if (cnt > 0) {
			msg = "부서별 관리자 등록 성공";
		} else {
			msg = "부서별 관리자 등록 실패";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@RequestMapping("/nonApprovalList")
	public String get_NonApprovalList(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("거래대기 목록, 파라미터 searchVo={}", searchVo);

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(5);
		pagingInfo.setRecordCountPerPage(9);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(9);

		List<ProductVO> list = adminService.selectNonApprovalList(searchVo);
		logger.info("거래대기 목록 조회 결과, list.size={}", list.size());

		int totalRecord = adminService.getTotalRecord(searchVo);
		logger.info("거래대기 목록 totalRecord={}", totalRecord);

		pagingInfo.setTotalRecord(totalRecord);

		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);

		return "/admin/nonApprovalList";
	}

	@GetMapping("/email")
	public String get_email() {
		logger.info("이메일 화면");

		return "/admin/email";
	}

	// 아직 구현 안된 페이지 보기
	@GetMapping("/pdList")
	public String viewPdList() {
		logger.info("상품리스트 화면");

		return "/admin/pdList";
	}
}
