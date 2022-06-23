package com.ez.wonder.mypage.model;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.member.model.ExpertImageVO;
import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.member.model.MemberVO;

@Mapper
public interface MypageDAO {
	MemberVO selectMemberByNo(int no);
	MemberVO selectMemberById(String userId);
	ExpertVO selectExpertById(String userId);
	int updateMember(MemberVO vo);
	int checkFree(String userId);
	int updateFree(ExpertVO vo);
	int insertExpertProfile(ExpertImageVO expertVo);
	int checkExpertProfileById(String userId);
	int deleteDupExpertProfile(String userId);
	ExpertImageVO selectExpertProfileById(String userId);
}
