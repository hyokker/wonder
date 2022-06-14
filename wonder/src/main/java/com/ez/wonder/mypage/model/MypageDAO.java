package com.ez.wonder.mypage.model;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.member.model.MemberVO;

@Mapper
public interface MypageDAO {
	MemberVO selectMemberByNo(int no);
	MemberVO selectMemberById(String userId);
	int updateMember(MemberVO vo);
}
