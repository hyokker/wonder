package com.ez.wonder.admin.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ez.wonder.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	private static final Logger logger
		= LoggerFactory.getLogger(AdminServiceImpl.class);
	
	private final AdminDAO adminDao;
	
	@Override
	List<MemberVO> selectMember(SearchVO searchVo){
		return adminDao.selectMember(searchVo);
	}
	
	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return adminDao.getTotalRecord(searchVo);
	}
}
