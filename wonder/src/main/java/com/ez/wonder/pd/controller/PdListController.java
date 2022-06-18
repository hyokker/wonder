package com.ez.wonder.pd.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.pd.model.ProductService;
import com.ez.wonder.pd.model.ProductVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/pd")
@RequiredArgsConstructor
public class PdListController {
	private static final Logger logger
	=LoggerFactory.getLogger(PdListController.class);

	private final ProductService productService;
	
	@GetMapping("/pdList")
	public void pdList(Model model) {
		logger.info("상품 리스트화면");
		
		List<ProductVO> pdList= productService.selectAllPd();
		logger.info("상품 목록 , pdList.size()={}", pdList.size());
		
		model.addAttribute("pdList", pdList);
		
	}
	

	
	
	
		
		
}
