package com.ez.wonder.pd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDAO {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
	
	//
	List<ProductVO> selectAllPd();
	int insertPd(ProductVO pd);
	int insertPdDetail(PdDetailVO item);
	int insertPdImage(PdImageVO item);
}