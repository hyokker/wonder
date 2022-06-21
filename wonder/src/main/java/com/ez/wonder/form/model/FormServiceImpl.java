package com.ez.wonder.form.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class FormServiceImpl implements FormService{
	private static final Logger logger
		=LoggerFactory.getLogger(FormServiceImpl.class);
	
	private final FormDAO formDao;

	@Override
	public int insertForm(FormVo vo) {
		return formDao.insertForm(vo);
	}

	@Override
	public List<FormVo> selectFormByUserId(String userId) {
		return formDao.selectFormByUserId(userId);
	}
}
