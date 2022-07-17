package com.ez.wonder.excel.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class SheetController {
	private static final Logger logger = LoggerFactory.getLogger(SheetController.class);

	@RequestMapping("/applicant")
	public String listApplicant(HttpServletRequest request, ModelMap model) {
		return "tiles:admin/applicant";
	}
}
