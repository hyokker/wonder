package com.ez.wonder.pd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.ez.wonder.noneDup.model.NoneDupVO;
import com.ez.wonder.pd.model.PdDetailVO;
import com.ez.wonder.pd.model.PdImageVO;
import com.ez.wonder.pd.model.PdList;
import com.ez.wonder.pd.model.PdListVO;
import com.ez.wonder.pd.model.ProductService;
import com.ez.wonder.pd.model.ProductVO;
import com.ez.wonder.pd.model.SearchWrapper;
import com.ez.wonder.pd.model.WishedWrapper;
import com.ez.wonder.skill.model.FrameworkVO;
import com.ez.wonder.skill.model.LanguageVO;
import com.ez.wonder.skill.model.SkillService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/pd")
@RequiredArgsConstructor
public class PdListController {
	private static final Logger logger = LoggerFactory.getLogger(PdListController.class);

	private final ProductService productService;
	private final SkillService skillService;

	@GetMapping("/pdList")
	public String pdList(HttpServletRequest httpServletRequest, Model model, HttpSession session) {
		logger.info("상품 리스트화면");

		List<LanguageVO> langList = skillService.allLanguage();
		logger.info("언어 조회 결과, langList.size={}", langList.size());

		List<FrameworkVO> frameList = skillService.allFrame();
		logger.info("언어 조회 결과, langList.size={}", frameList.size());

		// 3
		model.addAttribute("langList", langList);
		model.addAttribute("frameList", frameList);

		List<PdList> pdList = new ArrayList<PdList>();

		String userId= (String)session.getAttribute("userId");
		userId = "test";
		List<PdListVO> products = productService.selectAllPdByUserId(userId);
		for (PdListVO product : products) {
			logger.info("vo :" + product);
			PdList item = new PdList(product);
			int pdNo = item.getPdNo();
			List<PdDetailVO> pdDetails = productService.selectPdDetail(pdNo);
			if (pdDetails.isEmpty())
				continue;
			logger.info("vo :" + pdDetails);

			item.setPdDetail(pdDetails.get(0));
			List<PdImageVO> pdImages = productService.selectPdImage(pdNo);
			item.setPdImages(pdImages);
			pdList.add(item);
		}
		model.addAttribute("pdList", pdList);
		return "pd/pdList";
	}

	@PostMapping("/pdSearch")
	@ResponseBody
	public List<PdList> pdSearch(@RequestBody SearchWrapper search, HttpServletRequest httpServletRequest, HttpSession session) {
		logger.info("loginfo : " + search.toString());
		logger.info("title : " + search.getPdTitle());

		String userId= (String)session.getAttribute("userId");
		userId = "test";
		List<PdListVO> products = productService.searchPd(search.getPdTitle());
		logger.info(products.toString());
		List<PdList> pdList = new ArrayList<PdList>();
		for (PdListVO product : products) {
			PdList item = new PdList(product);
			int pdNo = item.getPdNo();
			
			 
			List<PdDetailVO> pdDetails = productService.selectPdDetail(pdNo);
			
			boolean isPdTerm = false;
			boolean isPdPrice = false;
			
			for(PdDetailVO pdDetail : pdDetails) {
				if(search.getPdTermMax() == 0) {
					isPdTerm = true;
				}
				
				if(search.getPdTermMin() <= pdDetail.getPdTerm() && pdDetail.getPdTerm()<= search.getPdTermMax()) {
					isPdTerm = true;
				}
				if(search.getPdPriceMin() <= pdDetail.getPdPrice() && pdDetail.getPdPrice()<= search.getPdPriceMax()) {
					isPdPrice = true;
				}
			}
			
			boolean isLang = false;
			for (String lang : search.getPdLang()) {
				if (product.getLang().indexOf(lang) >= 0) {
					isLang = true;
				}
			}

			if (search.getPdLang().size() == 0)
				isLang = true;

			if (isLang && !pdDetails.isEmpty() && isPdTerm && isPdPrice) {
				List<PdImageVO> pdImages = productService.selectPdImage(pdNo);
				item.setPdImages(pdImages);
				item.setPdDetail(pdDetails.get(0));
				pdList.add(item);
			}
		}
		
		logger.info(pdList.toString());
		return pdList;
	}
	
	@PostMapping("/pdWished")
	@ResponseBody
	public void pdWished(@RequestBody WishedWrapper wish, HttpServletRequest httpServletRequest, HttpSession session) {
		logger.info(wish.toString());
		
		String userId= (String)session.getAttribute("userId");
		userId = "test";
		if(wish.isChecked()) {
			productService.insertDupFlag(new NoneDupVO(userId, wish.getPdNo()));
		} else {
			productService.deleteDupFlag(new NoneDupVO(userId, wish.getPdNo()));
		}
	}
}
