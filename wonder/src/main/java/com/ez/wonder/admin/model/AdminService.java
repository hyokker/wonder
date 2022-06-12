package com.ez.wonder.admin.model;

import java.util.List;

import com.ez.wonder.common.SearchVO;

public interface AdminService {
	List<MemberVO> selectMember(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
}
