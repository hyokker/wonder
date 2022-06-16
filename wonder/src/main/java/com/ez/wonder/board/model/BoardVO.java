package com.ez.wonder.board.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardVO {
	private int boardNo;  /* 자유게시판번호 */
	private String cateType;	/* 카테고리종류 */
	private String userId;	  /* 회원아이디 */
	private String pwd;
	private String boardTitle;	/* 제목 */
	private Timestamp regdate; /* 등록일 */
	private int readCount; /* 조회수 */
	private String boardContent;	/* 내용 */
	//private String email;	
	
	//답변게시물
	private int groupNo;
	private int step; 
	private int sortNo;
	private String delType;  /* 삭제여부 */
	
	//fileInfo
	private String fileName;  /* 파일명 */
	private long fileSize;  /* 파일크기 */
	private String originalFileName;  /* 원본파일명 */
	//private int downCount;
	
	//New(24)
	private int dateTerm;



	
	
		
		


}





