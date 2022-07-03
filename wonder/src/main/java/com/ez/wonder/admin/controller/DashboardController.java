package com.ez.wonder.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.admin.model.SaleVO;

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
		
		logger.info("누적매출 sumAllSales={}, 월매출 monthlySales={}, 누적회원수 countMembers={}, 전문가수 countExperts={}", sumAllSales, monthlySales, countMembers, countExperts);
		
		model.addAttribute("sumAllSales", sumAllSales);
		model.addAttribute("monthlySales", monthlySales);
		model.addAttribute("countMembers", countMembers);
		model.addAttribute("countExperts", countExperts);
		model.addAttribute("countProduct", countProduct);
		
		return "/admin/dashboard";
	}
}

/*
 * Map<String, Object> map = new HashMap<String, Object>(); ArrayList<SaleVO>
 * saleVo = new ArrayList<SaleVO>();
 * 
 * int sumAllSales = adminService.sumAllSales(); int monthlySales =
 * adminService.monthlySales(); int countMembers = adminService.countMembers();
 * int countExperts = adminService.countExperts();
 * 
 * //payMethod donut ArrayList<SaleVO> countPaymethod =
 * adminService.countPaymethod();
 * 
 * map.put("sumAllSales", sumAllSales); map.put("monthlySales", monthlySales);
 * map.put("countMembers", countMembers); map.put("countExperts", countExperts);
 * map.put("countPaymethod", countPaymethod);
 */


