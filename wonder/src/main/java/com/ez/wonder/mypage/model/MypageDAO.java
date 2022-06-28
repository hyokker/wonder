package com.ez.wonder.mypage.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.member.model.ExpertImageVO;
import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.skill.model.FrameworkVO;
import com.ez.wonder.skill.model.LanguageVO;

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
	List<LanguageVO> selectAllLanguage();
	List<FrameworkVO> selectAllFramework();
	
}
