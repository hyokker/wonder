package com.ez.wonder.qna.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ez.wonder.common.ConstUtil;
import com.ez.wonder.common.FileUploadUtil;
import com.ez.wonder.common.PaginationInfo;
import com.ez.wonder.common.QnaConstUtil;
import com.ez.wonder.common.SearchVO;
import com.ez.wonder.qna.model.QnaService;
import com.ez.wonder.qna.model.QnaVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class QnaController {
	private static final Logger logger
	=LoggerFactory.getLogger(QnaController.class);
	
	private final QnaService qnaService;
	private final FileUploadUtil fileUploadUtil;
	
	@GetMapping("/qna/qnaWrite")
	public void qnaWrite_get() {
		logger.info("QNA 작성 페이지");
	}
	
	@PostMapping("/qna/qnaWrite")
	public String qnaWrite_post(@ModelAttribute QnaVO vo,
			HttpServletRequest request,
			Model model) {
logger.info("글쓰기 처리, 파라미터 vo={}",vo);
		
		//파일 업로드 처리
		String fileName="", oFileName="";
		long fileSize=0;
		
		try {
			List<Map<String, Object>> fileList
			=fileUploadUtil.fileUpload(request,
					QnaConstUtil.UPLOAD_FILE_FLAG);
			
			for(Map<String, Object> fileMap : fileList) {
				oFileName=(String) fileMap.get("originalFileName");
				fileName=(String) fileMap.get("fileName");
				fileSize= (long) fileMap.get("fileSize");				
			}//for
			
			logger.info("파일업로드 성공! fileName={}, fileSize={}", fileName, fileSize);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		vo.setFileName(fileName);
		vo.setOriginalFileName(oFileName);
		vo.setFileSize(fileSize);
		
		int cnt=qnaService.insertQna(vo);
		logger.info("글쓰기 처리 결과, cnt={}", cnt);
		
		return "redirect:/qna/qnaList";
	}
	
	@RequestMapping("/qna/qnaList")
	public void qnaList(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("QNA 게시판 목록 보기 파라미터 searchVo={}",searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(QnaConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(QnaConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		 
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(QnaConstUtil.RECORD_COUNT);
		
		List<QnaVO> list = qnaService.selectAll(searchVo);
		logger.info("조회 결과, list.size={}", list.size());
		
		int totalRecord =qnaService.getTotalRecord(searchVo);
		logger.info("조회 건수 cnt={}",totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		
	}
}
