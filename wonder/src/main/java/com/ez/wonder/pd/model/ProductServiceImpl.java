package com.ez.wonder.pd.model;


import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService{
	private final ProductDAO productDao;

	@Override
	public List<ProductVO> selectAllPd() {
		return productDao.selectAllPd();
	}

}
