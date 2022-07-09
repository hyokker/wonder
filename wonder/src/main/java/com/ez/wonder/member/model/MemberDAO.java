package com.ez.wonder.member.model;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.admin.model.AdminVO;

@Mapper
public interface MemberDAO {
	int insertMember(MemberVO vo);
	public int duplicateId(String userid);
	String selectPwd(String userid);
	public MemberVO selectByUserid(String userid);
	public int updateMember(MemberVO vo);
	public int deleteMember(String userid);
	//public
	ExpertVO selectSeller(String userid);
	ExpertVO selectSellerImg(String userid);
	
	
	//관리자 로그인 메서드
	String selectAdminPwd(String adminId);
	AdminVO selectByAdminId(String adminId);
}
