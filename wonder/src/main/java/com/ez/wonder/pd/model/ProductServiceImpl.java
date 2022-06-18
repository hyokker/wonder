package com.ez.wonder.pd.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService{
	private static final Logger logger
		=LoggerFactory.getLogger(ProductServiceImpl.class);
	
	private final ProductDAO productDao;

	@Override
	public ProductVO selcetProductByNo(int pdNo) {
		return productDao.selcetProductByNo(pdNo);
	}

	@Override
	public List<PdDetailVO> selcetPdDetail(int pdNo) {
		return productDao.selcetPdDetail(pdNo);
	}

}
