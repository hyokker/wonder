package com.ez.wonder.admin.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.common.SearchVO;

@Mapper
public interface AdminDAO {
	List<MemberVO> selectMember(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
}
