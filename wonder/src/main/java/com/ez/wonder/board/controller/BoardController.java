package com.ez.wonder.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.wonder.board.model.BoardService;
import com.ez.wonder.board.model.BoardVO;
import com.ez.wonder.common.ConstUtil;
import com.ez.wonder.common.PaginationInfo;
import com.ez.wonder.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	private final BoardService boardService;
	
	@GetMapping("/test")
	public void test() {
		logger.info("테스트");
	}
	
	@GetMapping("/write")
	public void write() {
		logger.info("게시판 글쓰기");
	}
	
	@PostMapping("/write")
	public String write_ok(@ModelAttribute BoardVO vo,
			HttpServletRequest request) {
		logger.info("글쓰기 처리, 파라미터 vo={}",vo);
		
		int cnt=boardService.insertBoard(vo);
		logger.info("글쓰기 처리 결과, cnt={}", cnt);
		
		return "redirect:/board/list";
	}
	
	@RequestMapping("/list")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		logger.info("자유게시판 목록, 파라미터 searchVo={}", searchVo);
		
		//[1] pagingInfo
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		//[2] searchVo.set
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		
		//List<BoardVO> list=boardService.selectAll(searchVo);
		//logger.info("글 목록 조회 결과, list.size={}", list.size());
		
		//totalRecord개수 구하기
		//int totalRecord=boardService.getTotalRecord(searchVo);
		//logger.info("글목록 totalRecord={}", totalRecord);
		
		//pagingInfo.setTotalRecord(totalRecord);
		
		//model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "board/list";
	}
	
	@RequestMapping("/countUpdate")
	public String countUpdate(@RequestParam(defaultValue = "0") int no,
			Model model) {
		return "redirect:/board/detail?no="+no;
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam(defaultValue = "0") int no,
			Model model) {
		return "board/detail";
		
	}
	
	@GetMapping("/edit")
	public String edit_get(@RequestParam(defaultValue = "0") int no,
			Model model) {
		return "board/edit";
	}
	
	@PostMapping("/edit")
	public String edit_post(@ModelAttribute BoardVO vo, Model model){
		return "common/message";
	}
	
	
	@GetMapping("/delete")
	public String delete_get(@RequestParam(defaultValue = "0") int no,
			@ModelAttribute BoardVO vo, Model model) {
		return "board/delete";
	}
	
	@PostMapping("/delete")
	public String delete_post(@RequestParam(defaultValue = "0")int no,
			@RequestParam String pwd, Model model) {
		return "common/message";
	}
}


