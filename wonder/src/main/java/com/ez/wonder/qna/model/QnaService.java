package com.ez.wonder.qna.model;

import java.util.List;

import com.ez.wonder.common.SearchVO;

public interface QnaService {
	int insertQna(QnaVO vo);
	List<QnaVO> selectAll(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
}
