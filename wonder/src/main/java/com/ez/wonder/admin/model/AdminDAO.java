package com.ez.wonder.admin.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.common.SearchVO;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.pd.model.ProductVO;

@Mapper
public interface AdminDAO {
	List<MemberVO> selectMember(SearchVO searchVo);
	List<ProductVO> selectNonApprovalList(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
	
	int dupAdminId(String adminId);
	AdminVO selectByAdminId(String adminId);
	String selectPwd(String adminId);
	
	int updateAdmin(AdminVO adminVo);
	int insertAdmin(AdminVO adminVo);
}
