package com.ez.wonder.pd.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.wonder.pd.model.PdDetailVO;
import com.ez.wonder.pd.model.ProductService;
import com.ez.wonder.pd.model.ProductVO;
import com.ez.wonder.review.model.ReviewService;
import com.ez.wonder.review.model.ReviewVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/pd")
public class ProductController {
	private static final Logger logger
		=LoggerFactory.getLogger(ProductController.class);
	
	private final ProductService productService;
	private final ReviewService reviewService;
	
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
		
		ProductVO pdVo=productService.selcetProductByNo(pdNo);
		logger.info("상품 조회 결과, vo={}", pdVo);
		List<PdDetailVO> list=productService.selcetPdDetail(pdNo);
		logger.info("상품 상세 조회 결과, list.size={}", list.size());
		List<ReviewVO> reviewList=reviewService.selectReviewByPdNo(pdNo);
		logger.info("리뷰 목록 조회, reviewList.size={}", reviewList.size());
		Map<String, Object> map=reviewService.getAvgScore(pdNo);
		logger.info("리뷰 평점 조회, map={}", map);
		
		model.addAttribute("pdVo", pdVo);
		model.addAttribute("list", list);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("map", map);
		
		return "/pd/pdDetail";
	}
	
	@PostMapping("/review")
	public String review(@ModelAttribute ReviewVO reviewVo,
			HttpSession session, Model model) {
		String userId=(String)session.getAttribute("userId");
		logger.info("리뷰 등록 처리, 파라미터 reviewVo={}, userId={}", reviewVo, userId);
		reviewVo.setUserId("hong");
		
		int cnt=reviewService.writeReview(reviewVo);
		logger.info("리뷰 등록 결과, cnt={}", cnt);
		
		String msg="리뷰 등록 실패했습니다.", url="/pd/pdDetail?pdNo="+reviewVo.getPdNo();
		if(cnt>0) {
			msg="리뷰가 등록되었습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	
	
}

