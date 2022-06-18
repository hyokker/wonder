package com.ez.wonder.pd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDAO {
	List<ProductVO> selectAllPd();
	
}
