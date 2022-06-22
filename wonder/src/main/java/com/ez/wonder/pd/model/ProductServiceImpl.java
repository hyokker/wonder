package com.ez.wonder.pd.model;

import java.util.List;

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
	
	@Override
	public List<ProductVO> selectAllPd() {
		return productDao.selectAllPd();
	}

	@Override
	public int insertPd(ProductVO item) {
		return productDao.insertPd(item);
	}

	@Override
	public int insertPdDetail(PdDetailVO item) {
		return productDao.insertPdDetail(item);
	}
}