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
	
	@Override
	public AdminVO selectByAdminId(String adminId) {
		return adminDao.selectByAdminId(adminId);
	}
	
	public int checkLogin(String adminId, String adminPwd) {
		String dbPwd = adminDao.selectPwd(adminId); //DB에서 admin아이디로 비번 조회
		
		int result = 0;
		if(dbPwd!=null && !dbPwd.isEmpty()) {
			if(dbPwd.equals(adminPwd)) {
				result=AdminService.LOGIN_OK;
			}else {
				result=AdminService.DISAGREE_PWD;
			}
		}else {
			result=AdminService.NONE_USERID;
		}
		
		return result;
	}
	
	public int updateAdmin(AdminVO adminVo) {
		return adminDao.updateAdmin(adminVo);
	}

	@Override
	public int insertAdmin(AdminVO adminVo) {
		return adminDao.insertAdmin(adminVo);
	}
}


 