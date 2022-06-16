package com.ez.wonder.board.model;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	private static final Logger logger
		=LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Autowired
	private BoardDAO boardDao;

	public BoardServiceImpl() {
		logger.info("생성자 호출 : BoardServiceImpl");
	}

	@Override
	public int insertBoard(BoardVO vo) {
		return boardDao.insertBoard(vo);
	}
	
	
}
