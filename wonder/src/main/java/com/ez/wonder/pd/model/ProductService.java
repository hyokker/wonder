package com.ez.wonder.pd.model;

import java.util.List;
import java.util.Map;

import com.ez.wonder.member.model.ExpertVO;

public interface ProductService {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
	ExpertVO getExpertInfo(int pdNo);
}
