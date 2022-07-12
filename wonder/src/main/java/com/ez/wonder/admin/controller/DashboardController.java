package com.ez.wonder.admin.controller;

import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.admin.model.PaymentVO;
import com.ez.wonder.form.model.FormVo;
import com.ez.wonder.pd.model.ProductVO;
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
		
		int sumAllSales = adminService.sumAllSales();
		int monthlySales = adminService.monthlySales();
		int countMembers = adminService.countMembers();
		int countExperts = adminService.countExperts();
		int countProduct = adminService.countProduct();
		int countPayment = adminService.countPayment();

		logger.info("누적매출 sumAllSales={}, 월매출 monthlySales={}, 누적회원수 countMembers={}, 전문가수 countExperts={}, 누적상품수 countProduct= {},누적거래건수 countPayment= {}",
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
}

/*
 * @RequestMapping("/chartjs") public @ResponseBody List<PaymentVO>
 * payChart(PaymentVO paymentVo, Model model) { List<PaymentVO> payChart =
 * adminService.payChart(); model.addAttribute("payChart", payChart); return
 * payChart; } }
 */

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
