package com.ez.wonder.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int insertMember(MemberVO vo);
	public int duplicateId(String userid);
	String selectPwd(String userid);
	public MemberVO selectByUserid(String userid);
	public int updateMember(MemberVO vo);
	public int deleteMember(String userid);
	//public
	ExpertVO selectByUserId(String userid);
}
