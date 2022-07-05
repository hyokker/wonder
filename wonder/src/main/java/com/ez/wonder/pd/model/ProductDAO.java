package com.ez.wonder.pd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ez.wonder.noneDup.model.NoneDupVO;

@Mapper
public interface ProductDAO {
	ProductVO selcetProductByNo(int pdNo);
	List<PdDetailVO> selcetPdDetail(int pdNo);
	int deleteProduct(int pdNo);
	
	//
	List<ProductVO> selectAllPd();
	int insertPd(ProductVO pd);
	int insertPdDetail(PdDetailVO item);
	int insertPdImage(PdImageVO item);

	List<PdListVO> selectAllPdByUserId(String userId);
	//
	List<PdDetailVO> selectPdDetailS(int pdNo);
	List<PdImageVO> selectPdImage(int pdNo);
	
	List<PdDetailVO> selectPdDetail(int pdNo);
	List<PdListVO> searchPd(String pdTitle);
	List<PdDetailVO> searchPdDetail(@Param("pdNo")int pdNo, @Param("editCount")int editCount, @Param("pdTermMin")int pdTermMin, @Param("pdTermMax")int pdTermMax, @Param("pdPriceMin")int pdPriceMin, @Param("pdPriceMax")int pdPriceMax);
}