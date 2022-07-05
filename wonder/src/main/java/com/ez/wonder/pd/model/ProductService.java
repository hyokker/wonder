package com.ez.wonder.pd.model;

import java.util.List;
import java.util.Map;

import com.ez.wonder.member.model.ExpertVO;

public interface ProductService {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
	int deleteProduct(int pdNo);
	
	//
	List<ProductVO> selectAllPd();
	int insertPd(ProductVO item);
	int insertPdDetail(PdDetailVO item);
	ExpertVO getExpertInfo(int pdNo);
	int insertPdImage(PdImageVO item);
}
