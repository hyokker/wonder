package com.ez.wonder.mypage.model;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ez.wonder.member.model.ExpertImageVO;
import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.member.model.MemberDAO;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.skill.model.LanguageVO;

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
	public ExpertVO selectExpertById(String userId) {
		return mypageDao.selectExpertById(userId);
	}

	@Override
	public int updateMember(MemberVO vo) {
		return mypageDao.updateMember(vo);
	}

	@Override
	public int checkFree(String userId) {
		return mypageDao.checkFree(userId);
	}

	@Override
	@Transactional
	public int updateFree(ExpertVO vo) {
		int cnt=mypageDao.updateMember(vo);
		cnt=mypageDao.updateFree(vo);
		
		return cnt;
	}

	@Override
	public int insertExpertProfile(ExpertImageVO expertVo) {
		return mypageDao.insertExpertProfile(expertVo);
	}

	@Override
	public int checkExpertProfileById(String userId) {
		return mypageDao.checkExpertProfileById(userId);
	}

	@Override
	public int deleteDupExpertProfile(String userId) {
		return mypageDao.deleteDupExpertProfile(userId);
	}

	@Override
	public ExpertImageVO selectExpertProfileById(String userId) {
		return mypageDao.selectExpertProfileById(userId);
	}

	@Override
	public List<LanguageVO> selectAllLanguage() {
		return mypageDao.selectAllLanguage();
	}




}
