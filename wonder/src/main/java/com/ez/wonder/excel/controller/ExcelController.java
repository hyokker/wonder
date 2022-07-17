package com.ez.wonder.excel.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ez.wonder.admin.model.AdminService;
import com.ez.wonder.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class ExcelController {
	private static final Logger logger = LoggerFactory.getLogger(ExcelController.class);

	private final AdminService adminService;
	
	  @GetMapping("/excelUpload")
	  public String excelUpload() { 
	    return "/admin/excelUpload";
	  }
	  
	  @PostMapping("/excelRead")
	  public String excelRead(@RequestParam("file") MultipartFile file, Model model) throws IOException { 
	    List<MemberVO> dataList = new ArrayList<>();

	    String extension = FilenameUtils.getExtension(file.getOriginalFilename());

	    if (!extension.equals("xlsx") && !extension.equals("xls")) {
	      throw new IOException("Excel 파일 전용입니다.");
	    }

	    Workbook workbook = null;

	    if (extension.equals("xlsx")) {
	      workbook = new XSSFWorkbook(file.getInputStream());
	    } else if (extension.equals("xls")) {
	      workbook = new HSSFWorkbook(file.getInputStream());
	    }

	    Sheet worksheet = workbook.getSheetAt(0);

	    for (int i = 1; i < worksheet.getPhysicalNumberOfRows(); i++) {
	      Row row = worksheet.getRow(i);

	      MemberVO memberVo = null;

	      memberVo.setMemNo((int) row.getCell(0).getNumericCellValue());
	      memberVo.setUserId(row.getCell(1).getStringCellValue());
	      
	      dataList.add(memberVo);
	    }

	    model.addAttribute("datas", dataList); 

	    return "excelList";
	  }
}
