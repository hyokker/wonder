package com.ez.wonder.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.admin.model.PaymentVO;
import com.ez.wonder.form.model.FormVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class DashboardController {
	private static final Logger logger = LoggerFactory.getLogger(DashboardController.class);

	private final AdminService adminService;

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		
		int sumAllSales = adminService.sumAllSales(); 
		int monthlySales = adminService.monthlySales(); 
		int countMembers = adminService.countMembers();
		int countExperts = adminService.countExperts();
		int countProduct = adminService.countProduct();
		int countPayment = adminService.countPayment();
		
		logger.info("누적매출 sumAllSales={}, 월매출 monthlySales={}, 누적회원수 countMembers={}, 전문가수 countExperts={}", sumAllSales, monthlySales, countMembers, countExperts);
		
		List<FormVo> list = adminService.selectForm();
		logger.info("의뢰서 목록 조회 결과 list.size={}", list.size());
		
		model.addAttribute("sumAllSales", sumAllSales);
		model.addAttribute("monthlySales", monthlySales);
		model.addAttribute("countMembers", countMembers);
		model.addAttribute("countExperts", countExperts);
		model.addAttribute("countProduct", countProduct);
		model.addAttribute("countPayment", countPayment);
		model.addAttribute("list", list);
		
		return "/admin/dashboard";
	}
	
	@RequestMapping("/chartjs")
	public String chartjs() {
		return "/admin/chartjs";
	}
}


/*
 * Map<String, Object> map = new HashMap<String, Object>(); ArrayList<SaleVO>
 * saleVo = new ArrayList<SaleVO>();
 * 
 * ArrayList<SaleVO> chart1 = adminService.salesPerMonth();
 * 
 * map.put("chart1", chart1);
 * 
 * logger.info("차트 결과 chart1={}", chart1);
 * 
 * return map;
 */

