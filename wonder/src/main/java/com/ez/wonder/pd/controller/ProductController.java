package com.ez.wonder.pd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
//@RequiredArgsConstructor
@RequestMapping("/pd")
public class ProductController {
	private static final Logger logger
		=LoggerFactory.getLogger(ProductController.class);
	
	//private final ProductDAO productDao;
	
	//http://localhost:9095/wonder/pd/pdDetail
	@GetMapping("/pdDetail")
	public void pdDetail(@RequestParam(defaultValue = "0") int pdNo,
			Model model) {
		logger.info("상품 상세 화면, 파라미터 pdNo={}", pdNo);
		
		
	}
}
