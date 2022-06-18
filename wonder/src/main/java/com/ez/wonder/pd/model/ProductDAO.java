package com.ez.wonder.pd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDAO {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
}