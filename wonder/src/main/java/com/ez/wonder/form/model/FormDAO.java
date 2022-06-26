package com.ez.wonder.form.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.review.model.ReviewVO;

@Mapper
public interface FormDAO {
	int insertForm(FormVo vo);
	List<FormVo> selectFormByUserId(String userId);
	int selectCount(ReviewVO vo);
}
