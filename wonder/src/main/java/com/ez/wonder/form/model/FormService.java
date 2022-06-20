package com.ez.wonder.form.model;

import java.util.List;

public interface FormService {
	int insertForm(FormVo vo);
	List<FormVo> selectFormByUserId(String userId);
}
