package com.ez.wonder.pd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pd")
public class PdListController {
	private static final Logger logger
	=LoggerFactory.getLogger(ProductController.class);

	
	@GetMapping("/pdList")
	public void pdList(Model model) {
		
	}
	

	@GetMapping("/pdWrite")
	public void pdWrite(Model model) {
		
	}
		
		
}
