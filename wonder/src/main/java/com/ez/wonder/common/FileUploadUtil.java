package com.ez.wonder.common;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component
public class FileUploadUtil {
	private static final Logger logger
	=LoggerFactory.getLogger(FileUploadUtil.class);

	public List<Map<String, Object>> fileUpload(HttpServletRequest request,
			int uploadFlag) 
					throws IllegalStateException, IOException {
		MultipartHttpServletRequest multiRequest 
		= (MultipartHttpServletRequest)request;
		//업로드 파일 접근 두번째
		Map<String, MultipartFile> fileMap=multiRequest.getFileMap();

		//업로드 파일 정보 저장할 List 선언
		List<Map<String, Object>> list = new ArrayList<>();

		Iterator<String> keyIter=fileMap.keySet().iterator();
		while(keyIter.hasNext()) {
			String key=keyIter.next();
			MultipartFile tempFile = fileMap.get(key);
			//=> 업로드된 파일을 임시파일 형태로 제공

			if(!tempFile.isEmpty()) {
				long fileSize=tempFile.getSize(); //파일 크기
				String oName = tempFile.getOriginalFilename(); //원래 파일명

				//변경된 파일이름 구하기
				String fileName = getUniqueFileName(oName);

				//파일 업로드 처리
				//업로드할 폴더 구하기
				String uploadPath 
				= getUploadPath(request, uploadFlag);
				File file = new File(uploadPath, fileName); 
				tempFile.transferTo(file);

				//업로드된 파일 정보 저장
				//[1] Map에 저장
				Map<String, Object> resultMap = new HashMap<>();
				resultMap.put("fileName", fileName);
				resultMap.put("fileSize", fileSize);
				resultMap.put("originalFileName", oName);

				//[2] 여러 개의 Map을 List에 저장
				list.add(resultMap);
			}//if
		}//while

		return list;
	}

	//파일명이 중복될 경우 파일이름 변경하기
	public String getUniqueFileName(String fileName) {

		//파일명(확장자x)
		int idx = fileName.lastIndexOf(".");
		String fileNm = fileName.substring(0,idx);  //a

		//확장자
		String ext = fileName.substring(idx); // .txt

		//변경된 파일명
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String today = sdf.format(d);

		String result = fileNm + "_" + today + ext;
		logger.info("변경된 파일명 : {}", result);

		return result;
	}

	//업로드 경로
	public String getUploadPath(HttpServletRequest request, int pathFlag) {
		String path="";

		if(ConstUtil.FILE_UPLOAD_TYPE.equals("test")) {	//테스트시
			if(pathFlag==ConstUtil.UPLOAD_FILE_FLAG) {  //자료실 업로드
				path=ConstUtil.FILE_UPLOAD_PATH_TEST;
			}else if(pathFlag==ConstUtil.UPLOAD_IMAGE_FLAG) {  //상품 등록시 이미지 업로드
				path=ConstUtil.IMAGE_FILE_UPLOAD_PATH_TEST;				
			}
		}else {  //배포시(deploy)
			if(pathFlag==ConstUtil.UPLOAD_FILE_FLAG) {  //자료실 업로드
				path=ConstUtil.FILE_UPLOAD_PATH;  //pds_upload
			}else if(pathFlag==ConstUtil.UPLOAD_IMAGE_FLAG) {  //상품 등록시 이미지 업로드
				path=ConstUtil.IMAGE_FILE_UPLOAD_PATH; //pd_images				
			}

			//물리경로
			path=request.getSession().getServletContext().getRealPath(path);
		}

		logger.info("업로드 경로:{}", path);

		return path;
	}
	
	//파일 정보
	public String getFileInfo(String originalFileName, long fileSize,
			HttpServletRequest request) {
		String result="";		
		if(originalFileName !=null && !originalFileName.isEmpty()) {			
			double dFileSize=Math.round((fileSize/1024.0)*10)/10.0;

			result="<img src='"+request.getContextPath()
				+"/img/file.gif'> "
					+originalFileName+" ("+dFileSize+"KB)";
		}
		
		return result;
	}


}










