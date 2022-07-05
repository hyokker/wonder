package com.ez.wonder.pd.model;

import java.util.List;
import java.util.Map;

import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.noneDup.model.NoneDupVO;

public interface ProductService {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
	int deleteProduct(int pdNo);
	
	//
	List<ProductVO> selectAllPd();
	int insertPd(ProductVO item);

	List<PdListVO> selectAllPdByUserId(String userId);
	int insertPdDetail(PdDetailVO item);
	ExpertVO getExpertInfo(int pdNo);
	int insertPdImage(PdImageVO item);
	
	List<PdDetailVO> selectPdDetail(int pdNo);
	List<PdImageVO> selectPdImage(int pdNo);
	
	
	List<PdListVO> searchPd(String pdTitle);
	
	int insertDupFlag(NoneDupVO item);
	int deleteDupFlag(NoneDupVO item);
	List<PdDetailVO> searchPdDetail(int pdNo, int editCount, int pdTermMin, int pdTermMax, int pdPriceMin, int pdPriceMax);
}
