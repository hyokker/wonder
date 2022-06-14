package com.ez.wonder.mypage.model;

import org.springframework.stereotype.Service;

import com.ez.wonder.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService{

	private final MypageDAO mypageDao;
	
	@Override
	public MemberVO selectMemberByNo(int no) {
		return mypageDao.selectMemberByNo(no);
	}

	@Override
	public MemberVO selectMemberById(String userId) {
		return mypageDao.selectMemberById(userId);
	}

	@Override
	public int updateMember(MemberVO vo) {
		return mypageDao.updateMember(vo);
	}

}
