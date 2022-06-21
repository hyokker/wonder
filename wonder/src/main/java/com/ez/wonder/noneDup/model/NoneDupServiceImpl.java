package com.ez.wonder.noneDup.model;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class NoneDupServiceImpl implements NoneDupService{
	private static final Logger logger
		=LoggerFactory.getLogger(NoneDupServiceImpl.class);
}
