package com.ez.wonder.review.model;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	int writeReview(ReviewVO vo);
	List<ReviewVO> selectReviewByPdNo(int pdNo);
	Map<String, Object> getAvgScore(int pdNo);
}