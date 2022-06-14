package com.ez.wonder.mypage.model;

import com.ez.wonder.member.model.MemberVO;

public interface MypageService {
	MemberVO selectMemberByNo(int no);
	MemberVO selectMemberById(String userId);
	int updateMember(MemberVO vo);

}
