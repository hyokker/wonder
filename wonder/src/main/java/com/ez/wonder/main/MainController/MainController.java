package com.ez.wonder.main.MainController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.aboutUs.controller.AboutUsController;

@Controller
public class MainController {
	private static final Logger logger
	=LoggerFactory.getLogger(MainController.class);
	
	
	@RequestMapping("/")
	public String get_main() {
		return "/main/main";
	}
}
