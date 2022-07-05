package com.ez.wonder.pd.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.member.model.MemberDAO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService{
	private static final Logger logger
		=LoggerFactory.getLogger(ProductServiceImpl.class);
	
	private final ProductDAO productDao;
	private final MemberDAO memberDao;
	
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
	
	public ExpertVO getExpertInfo(int pdNo) {
		ProductVO vo=productDao.selcetProductByNo(pdNo);
		String userId=vo.getUserId();
		
		return memberDao.selectByUserId(userId);
	}
	
	@Override
	public int insertPdImage(PdImageVO item) {
		return productDao.insertPdImage(item);
	}

	@Override
	public int deleteProduct(int pdNo) {
		return productDao.deleteProduct(pdNo);
	}

}