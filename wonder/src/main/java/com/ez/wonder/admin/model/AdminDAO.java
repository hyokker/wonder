package com.ez.wonder.admin.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.common.SearchVO;
import com.ez.wonder.member.model.MemberVO;

@Mapper
public interface AdminDAO {
	List<MemberVO> selectMember(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
	int updatePwd(String adminPwd);
}
