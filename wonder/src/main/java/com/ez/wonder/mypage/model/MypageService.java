package com.ez.wonder.mypage.model;

import java.util.List;

import com.ez.wonder.member.model.ExpertImageVO;
import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.skill.model.LanguageVO;

public interface MypageService {
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
	List<LanguageVO> selectAllLanguage();

}
