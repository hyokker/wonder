package com.ez.wonder.pd.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.wonder.pd.model.PdDetailVO;
import com.ez.wonder.pd.model.ProductService;
import com.ez.wonder.pd.model.ProductVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/pd")
public class ProductController {
	private static final Logger logger
		=LoggerFactory.getLogger(ProductController.class);
	
	private final ProductService productService;
	
	//http://localhost:9095/wonder/pd/pdDetail?pdNo=1
	@GetMapping("/pdDetail")
	public String pdDetail(@RequestParam(defaultValue = "0") int pdNo,
			Model model) {
		logger.info("상품 상세 화면, 파라미터 pdNo={}", pdNo);
		
		if(pdNo == 0) {
			model.addAttribute("msg","잘못된 접근입니다.");
			model.addAttribute("url","/pd/pdList");
			
			return "/common/message";
		}
		
		/*
		 * ProductVO pdVo=productService.selcetProductByNo(pdNo);
		 * logger.info("상품 조회 결과, vo={}", pdVo); List<PdDetailVO>
		 * list=productService.selcetPdDetail(pdNo);
		 * logger.info("상품 상세 조회 결과, list.size={}", list.size());
		 * 
		 * model.addAttribute("pdVo", pdVo); model.addAttribute("list", list);
		 */
		
		return "/pd/pdDetail";
	}
}
