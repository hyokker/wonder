package com.ez.wonder.form.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FormDAO {
	int insertForm(FormVo vo);
	List<FormVo> selectFormByUserId(String userId);
}
