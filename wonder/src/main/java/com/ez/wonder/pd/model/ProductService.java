package com.ez.wonder.pd.model;

import java.util.List;
import java.util.Map;

public interface ProductService {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
}
