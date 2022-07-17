/*
 * package com.ez.wonder.excel.controller;
 * 
 * import java.util.ArrayList; import java.util.HashMap; import java.util.List;
 * import java.util.Map;
 * 
 * import org.slf4j.Logger; import org.slf4j.LoggerFactory; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import com.ez.wonder.admin.model.AdminService; import
 * com.ez.wonder.member.model.MemberVO;
 * 
 * import lombok.RequiredArgsConstructor;
 * 
 * @Controller
 * 
 * @RequiredArgsConstructor
 * 
 * @RequestMapping("/admin") public class ExcelController { private static final
 * Logger logger = LoggerFactory.getLogger(ExcelController.class);
 * 
 * private final AdminService adminService;
 * 
 * public Map<String, Object> get_excel(){ List<MemberVO> memberList = new
 * ArrayList<MemberVO>(); memberList = adminService.excelMember();
 * List<HashMap<String, String>> list = new ArrayList<HashMap<String,
 * String>>(); HashMap<String, Object> row = new HashMap<String, Object>();
 * 
 * if(memberList.size()>0) { int rowName = 1; for(int
 * i=0;i<memberList.size();i++) { HashMap<String, String> cell = new
 * HashMap<String, String>(); int idx = 1;
 * 
 * cell.put("cell"+idx++, String.valueOf(rowName)); cell.put("cell"+idx++,
 * memberList.get(i).getType()); cell.put("cell"+idx++,
 * memberList.get(i).getName()); cell.put("cell"+idx++,
 * memberList.get(i).getUserId()); cell.put("cell"+idx++,
 * memberList.get(i).getNickname()); cell.put("cell"+idx++,
 * memberList.get(i).getEmail()); cell.put("cell"+idx++,
 * memberList.get(i).getTel()); list.add(cell); rowName++; }
 * 
 * row.put("memberList", list);
 * 
 * int cellCnt = 7;
 * 
 * String labels[]; String styleInfo[];
 * 
 * String colName[] = {"No", "회원분류", "회원명", "아이디", "닉네임", "이메일", "전화번호"}; String
 * style[] = {"center", "center", "center", "center", "center", "center",
 * "center"};
 * 
 * labels = colName; styleInfo = style;
 * 
 * Map<String, Object> excelModel = new HashMap<String, Object>();
 * excelModel.put("fileName", "회원목록"); excelModel.put("dataLength", cellCnt);
 * excelModel.put("dataMap", list); excelModel.put("Labels", labels);
 * excelModel.put("styleInfo", styleInfo); excelModel.put("BASEPATH", "");
 * excelModel.put("filePath", "excel");
 * 
 * ExcelUtil excel = new ExcelUtil();
 * 
 * } }
 * 
 * 
 * }
 */