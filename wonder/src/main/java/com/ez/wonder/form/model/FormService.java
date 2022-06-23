package com.ez.wonder.form.model;

import java.util.List;

import com.ez.wonder.review.model.ReviewVO;

public interface FormService {
	int insertForm(FormVo vo);
	List<FormVo> selectFormByUserId(String userId);
	String checkPayFlag(ReviewVO vo);
}
