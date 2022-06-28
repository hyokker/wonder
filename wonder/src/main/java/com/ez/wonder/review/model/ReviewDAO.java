package com.ez.wonder.review.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewDAO {
	int writeReview(ReviewVO vo);
	List<ReviewVO> selectReviewByPdNo(int pdNo);
	Map<String, Object> getAvgScore(int pdNo);
	int reviewCount(ReviewVO vo);
}