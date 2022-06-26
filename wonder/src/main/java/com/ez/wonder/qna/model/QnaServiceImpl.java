package com.ez.wonder.qna.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ez.wonder.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QnaServiceImpl implements QnaService{
	
	private final QnaDAO qnaDao;
	
	
	@Override
	public int insertQna(QnaVO vo) {
		return qnaDao.insertQna(vo);
	}


	@Override
	public List<QnaVO> selectAll(SearchVO searchVo) {
		return qnaDao.selectAll(searchVo);
	}


	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return qnaDao.getTotalRecord(searchVo);
	}


	@Override
	public int updateCount(int qnaNo) {
		return qnaDao.updateCount(qnaNo);
	}


	@Override
	public QnaVO selectByNo(int qnaNo) {
		return qnaDao.selectByNo(qnaNo);
	}

}
