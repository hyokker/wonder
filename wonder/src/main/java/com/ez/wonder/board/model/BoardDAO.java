package com.ez.wonder.board.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDAO {	
	public int insertBoard(BoardVO vo);	
	
	//int getTotalRecord(SearchVO searchVo);
	//public List<BoardVO> selectAll(SearchVO searchVo);
	//public BoardVO selectByNo(int no);
	//public int updateCount(int no);
	//String selectPwd(int no);
	//public int updateBoard(BoardVO vo);
	//public int deleteBoard(int no);
	
}














