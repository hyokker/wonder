package com.ez.wonder.board.model;

import java.util.List;

import com.ez.wonder.common.SearchVO;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public List<BoardVO> selectAll(SearchVO searchVo);
	int getTotalRecord(SearchVO searchVo);
	public int updateCount(int boardNo);
	public BoardVO selectByNo(int boardNo);
	int updateDownCount(int boardNo);
	public boolean checkPwd(int no, String pwd);
	public int updateBoard(BoardVO vo);
	//public int deleteBoard(int no);
	
}
