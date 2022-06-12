package com.ez.wonder.admin.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ez.wonder.common.SearchVO;
import com.ez.wonder.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	private static final Logger logger
		= LoggerFactory.getLogger(AdminServiceImpl.class);
	
	private final AdminDAO adminDao;
	
	@Override
	public List<MemberVO> selectMember(SearchVO searchVo){
		return adminDao.selectMember(searchVo);
	}
	
	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return adminDao.getTotalRecord(searchVo);
	}
	
	public int checkPwd(String adminPwd) {
		String dbPwd = (String) session.getAttribute("adminPwd");
		
		int result = 0;
		if(dbPwd!=null && !dbPwd.isEmpty()) {
			if(dbPwd.equals(adminPwd)) {
				result = AdminService.AGREE_PWD;
			}else {
				result = AdminService.DISAGREE_PWD;
			}
		}
		return result;
	}
	
	@Override
	public int updatePwd(String adminPwd) {
		return adminDao.upadtePwd(adminPwd);
	}
}
