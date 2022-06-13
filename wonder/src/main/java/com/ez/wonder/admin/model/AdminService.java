package com.ez.wonder.admin.model;

import java.util.List;

import com.ez.wonder.common.SearchVO;
import com.ez.wonder.member.model.MemberVO;

public interface AdminService {
	List<MemberVO> selectMember(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
	int checkPwd(String adminPwd);
	int updatePwd(String adminPwd);
	
	public static final int AGREE_PWD=1;  //비번 일치
	public static final int DISAGREE_PWD=2;  //비번 불일치
}
