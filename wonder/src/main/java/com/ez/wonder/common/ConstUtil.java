package com.ez.wonder.common;

public interface ConstUtil {
	//게시판 페이징 관련 상수
	public static final int RECORD_COUNT=5;
	int BLOCKSIZE=10;

	//파일 업로드 관련 상수
	String FILE_UPLOAD_TYPE="test";   //테스트시
	//String FILE_UPLOAD_TYPE="deploy"; //배포시
	
	//게시판 - 파일 저장 경로
	String FILE_UPLOAD_PATH="pds_upload";
	String FILE_UPLOAD_PATH_TEST="C:\\Users\\seo\\Desktop\\lecture\\workspace_list\\sps_ws\\springherb\\src\\main\\resources\\static\\pds_upload";
	
	//관리자 페이지 - 상품 등록시 상품 이미지 저장 경로		
	String IMAGE_FILE_UPLOAD_PATH="pd_images";
	String IMAGE_FILE_UPLOAD_PATH_TEST="C:\\Users\\seo\\Desktop\\lecture\\workspace_list\\sps_ws\\springherb\\src\\main\\resources\\static\\pd_images";
	
	//전문가 페이지 - 프로필사진 업로드
	String EXPERT_PROFILE_IMAGE_PATH="img\\mypage\\expert_profile";
	String EXPERT_PROFILE_IMAGE_PATH_TEST="C:\\Users\\zess\\git\\wonder\\wonder\\src\\main\\resources\\static\\img\\mypage\\expert_profile";

	//전문가 페이지 - 포트폴리오사진 업로드
	String EXPERT_PORTFOLIO_IMAGE_PATH="img\\mypage\\expert_portfolio";
	String EXPERT_PORTFOLIO_IMAGE_PATH_TEST="C:\\Users\\zess\\git\\wonder\\wonder\\src\\main\\resources\\static\\img\\mypage\\expert_portfolio";
	
	//게시판 업로드인지, 상품 등록시 업로드인지 구분값
	int UPLOAD_FILE_FLAG=1;  //게시판 업로드
	int UPLOAD_IMAGE_FLAG=2; //상품 등록시 이미지 업로드
	
	int EXPERT_PROFILE_IMAGE=3; //전문가 프로필사진 이미지 업로드
	int EXPERT_PORTFOLIO_IMAGE=4; //전문가 포트	폴리오 사진 이미지 업로드
}

