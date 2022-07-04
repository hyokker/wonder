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

import com.ez.wonder.common.ConstUtil;
import com.ez.wonder.form.model.FormService;
import com.ez.wonder.form.model.FormVo;
import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.noneDup.model.NoneDupService;
import com.ez.wonder.noneDup.model.NoneDupVO;
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
	private final FormService formService;
	private final NoneDupService noneDupService;
	
	//http://localhost:9095/wonder/pd/pdDetail?pdNo=1
	@GetMapping("/pdDetail")
	public String pdDetail_get(@RequestParam(defaultValue = "0") int pdNo,
			HttpSession session, Model model) {
		String userId=(String) session.getAttribute("userId");
		//userId="hong";	//test
		logger.info("상품 상세 화면, 파라미터 pdNo={}, userId={}", pdNo, userId);
		
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
		ExpertVO expertVo=productService.getExpertInfo(pdNo);
		logger.info("판매자 정보 조회, expertVo={}", expertVo);
		int heartCount=0;
		if(userId != null && !userId.isEmpty()) {
			NoneDupVO dupVo=new NoneDupVO();
			dupVo.setUserId(userId);
			dupVo.setPdNo(pdNo);
			heartCount=noneDupService.checkUserId(dupVo);
		}
		logger.info("찜하기 정보 조회, heartCount={}", heartCount);
		
		model.addAttribute("pdVo", pdVo);
		model.addAttribute("list", list);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("map", map);
		model.addAttribute("expertVo", expertVo);
		model.addAttribute("heartCount", heartCount);
		
		return "/pd/pdDetail";
	}
	
	@PostMapping("/noneDup")
	public String noneDup_post(@ModelAttribute NoneDupVO vo,
			Model model) {
		logger.info("찜하기 처리, 파라미터 vo={}", vo);
		vo.setUserId("hong");	//test
		
		int result=noneDupService.clickHeart(vo);
		logger.info("찜하기 처리 결과, result={}", result);
		
		String msg="찜하기/찜해제 실패", url="/pd/pdDetail?pdNo="+vo.getPdNo();
		if(result>0) {
			if(result==ConstUtil.ADDHEART) {
				msg="찜 등록";
			}else if(result==ConstUtil.REMOVEHEART) {
				msg="찜 해제";
			}
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	
	@PostMapping("/review")
	public String review(@ModelAttribute ReviewVO reviewVo,
			HttpSession session, Model model) {
		logger.info("리뷰 등록 처리, 파라미터 reviewVo={}", reviewVo);
		
		String result=formService.checkPayFlag(reviewVo);
		logger.info("상품 구매여부 조회, result={}", result);
		
		String msg="리뷰 등록 실패했습니다.", url="/pd/pdDetail?pdNo="+reviewVo.getPdNo();
		if(result.equals("Y")) {
			int reviewCount=reviewService.reviewCount(reviewVo);
			if(reviewCount>0) {
				msg="이미 리뷰를 등록하셨습니다.";
			}else {
				int cnt=reviewService.writeReview(reviewVo);
				logger.info("리뷰 등록 결과, cnt={}", cnt);
				
				if(cnt>0) {
					msg="리뷰가 등록되었습니다.";
				}
			}
		}else {
			msg="상품을 구매하시지 않았습니다.";
		}
		
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	
	@PostMapping("/form")
	public String form(@ModelAttribute FormVo formVo,
			Model model) {
		logger.info("의뢰서 등록 처리, 파라미터 formVo={}", formVo);
		formVo.setUserId("kim");	//test
		
		int cnt=formService.insertForm(formVo);
		logger.info("의뢰서 등롤 결과, cnt={}", cnt);
		
		String msg="의뢰서를 전송을 실패하였습니다.", url="/pd/pdDetail?pdNo="+formVo.getPdNo();
		if(cnt>0) {
			msg="판매자에게 의뢰서를 전송하였습니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
	
	@GetMapping("/calendar")
	public void calendar(@RequestParam String userId,
			Model model) {
		logger.info("판매자 일정, 파라미터 userId={}", userId);
		
		List<FormVo> list=formService.selectFormByUserId(userId);
		logger.info("판매자 일정 조회 결과, list.size={}", list.size());
		
		model.addAttribute("list", list);
	}
}