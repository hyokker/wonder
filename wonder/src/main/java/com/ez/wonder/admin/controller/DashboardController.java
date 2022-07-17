package com.ez.wonder.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.form.model.FormVo;
import com.ez.wonder.payment.model.PaymentVO;
import com.ez.wonder.pd.model.ProductVO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class DashboardController {
	private static final Logger logger = LoggerFactory.getLogger(DashboardController.class);

	private final AdminService adminService;

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		Integer sumAllSales = adminService.sumAllSales();
		if (sumAllSales == null) {
			sumAllSales = 0;
		}
		Integer monthlySales = adminService.monthlySales();
		if (monthlySales == null) {
			monthlySales = 0;
		}
		int countMembers = adminService.countMembers();
		int countExperts = adminService.countExperts();
		int countProduct = adminService.countProduct();
		int countPayment = adminService.countPayment();

		logger.info(
				"누적매출 sumAllSales={}, 월매출 monthlySales={}, 누적회원수 countMembers={}, 전문가수 countExperts={}, 누적상품수 countProduct= {},누적거래건수 countPayment= {}",
				sumAllSales, monthlySales, countMembers, countExperts, countProduct, countPayment);

		List<FormVo> list = adminService.selectForm();
		logger.info("의뢰서 목록 조회 결과 list.size={}", list.size());
		List<ProductVO> listbyread = adminService.selectReadCount();
		logger.info("상품 목록 조회수순 조회 결과 listbyread.size={}", listbyread.size());

		model.addAttribute("sumAllSales", sumAllSales);
		model.addAttribute("monthlySales", monthlySales);
		model.addAttribute("countMembers", countMembers);
		model.addAttribute("countExperts", countExperts);
		model.addAttribute("countProduct", countProduct);
		model.addAttribute("countPayment", countPayment);
		model.addAttribute("list", list);
		model.addAttribute("listbyread", listbyread);

		return "/admin/dashboard";
	}

	@RequestMapping("/chartjs")
	public void chartjs(Model model) {
		List<PaymentVO> paymethodList = adminService.payChart();
		logger.info("결제방식 조회 결과 paymethodList.size={}", paymethodList.size());

		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();

		Iterator<PaymentVO> iterator = paymethodList.iterator();
		while (iterator.hasNext()) {
			PaymentVO paymentVo = iterator.next();
			JsonObject object = new JsonObject();
			String method = paymentVo.getPayMethod();
			int price = paymentVo.getPrice();

			object.addProperty("method", method);
			object.addProperty("price", price);
			jArray.add(object);
		}

		String json = gson.toJson(jArray);
		model.addAttribute("json", json);
		logger.info("이건 로거다!!!!!!!!!!!!!!!! json={}", json);
	}

	@RequestMapping("/ajaxChart")
	@ResponseBody
	public String ajaxChart(HttpServletRequest request, @ModelAttribute ProductVO productVo) {
		List<ProductVO> list = adminService.productPerDay();
		logger.info("제발 되게 해주세요!!!!!!!!! list={}", list);
		request.setAttribute("list", list);
		HashMap map = new HashMap();
		map.put("list", list);
		String json = null;
		try {
			json = new ObjectMapper().writeValueAsString(map);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}

	@RequestMapping("/cccccccccc")
	public String cccccccccc() {
		return "/admin/cccccccccc";
	}

	@RequestMapping("/memberRate")
	public String memberRate(Locale locale, Model model) throws Exception {

		int NormalMem = adminService.countNormal();
		int ExpertMem = adminService.countExperts();

		model.addAttribute("NormalMem", NormalMem);
		model.addAttribute("ExpertMem", ExpertMem);

		return "/admin/memberRate";
	}
}
