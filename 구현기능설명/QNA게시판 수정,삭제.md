# QNA게시판 수정, 삭제 기능 구현

- 작성된 글의 제목을 클릭해서 상세보기 창으로 이동 후 하단의 수정버튼을 클릭한다.
- 버튼에 유효성 검사를 추가하여, 글 작성자, 관리자만 수정할수 있게 처리하였다.
   
```html
		$('#btedit').click(function(){
			if($('#sessionAdmin').val().length > 1 ){
				location.href="<c:url value='/qna/qnaEdit?qnaNo='/>"+$('#qnaNo').val();
			}else if($('#sessionId').val()!=$('#userId').val()){
				alert('권한이 없습니다.');
				event.preventDefault();
			}else{
				location.href="<c:url value='/qna/qnaEdit?qnaNo='/>"+$('#qnaNo').val();
			}
		});

```

- location.href와 JSTL c:url 태그를 이용해서, 수정 페이지로 이동하는 컨트롤러로 보낸다.
- 수정할 페이지에서는 수정할 내용이 보여야 하기 때문에, 파라미터로 보낸 qnaNo를 통해 해당 글의 전체 내용을 select 한 후 , 수정 페이지에 출력한다.
   
   
```java
	@GetMapping("/qna/qnaEdit")
	public String edit_get(@RequestParam(defaultValue = "0") int qnaNo,
			Model model) {
		logger.info("글 수정 페이지, 파라미터 no = {}", qnaNo);

		if(qnaNo == 0) {
			model.addAttribute("msg", "잘못된 접근입니다");
			model.addAttribute("url", "/qna/qnaList");
			return "/common/message";
		}

		QnaVO vo = qnaService.selectByNo(qnaNo);
		logger.info("수정할 글 상세보기 vo={}", vo);

		model.addAttribute("vo", vo);

		return "qna/qnaEdit";
	}
```

- 수정 페이지 jsp   

```html
<section>
	<div class="container">
		<div class="row">
			<form name="frmWrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/qna/qnaEdit'/>">
<input type="hidden" name="qnaNo" value="${param.qnaNo }" />
<fieldset>
	<!-- Submit Form -->
<div class="col-lg-12 col-md-12">

	<div class="submit-page p-0">

		<!-- Basic Information -->
<div class="frm_submit_block">
	<h2>게시글 수정하기</h2>
	<hr>
	<div class="frm_submit_wrap">
		<div class="form-row">

			<!--div class="form-group col-md-12"-->
		<div class="form-group col-md-7" id="">
			<label for="boardTitle">제목</label> <input type="text"
				class="form-control" name="qnaTitle" id="qnaTitle"
				value="${vo.qnaTitle}" />
		</div>
		<div class="form-group col-md-4 box"></div>

		<div class="form-group col-md-4" id="">
			<label for="userId">작성자</label> <input type="text"
				class="form-control" readonly="readonly" name="userId"
				id="userId" value="${vo.userId}">
		</div>
		<div class="form-group col-md-7 box"></div>

	 <div class="form-group col-md-4" id="">
			<!-- <label for="pwd">비밀번호</label> -->
			<input type="hidden" maxlength="4" class="form-control" id="pwd" name="pwd" value="">
		</div>
		
		<div class="form-group col-md-4"></div>

		<div class="form-group col-md-5">
			<label for="upfile">첨부파일</label> <input type="file"
				id="upfile" name="upfile" class="form-control" />
			<c:if test="${!empty vo.fileName}">
				<span style="color: green"> 새로운 파일을 첨부하는 경우 기존 파일 <img
					src="<c:url value='/img/file.gif'/>" />
					${vo.originalFileName}은(는) 삭제됩니다.
				</span>
			</c:if>
		</div>
		<div class="form-group col-md-3" id="byte">
			<span>(최대 2MB)</span>
		</div>
	</div>

	<!-- Detailed Information -->
	<div class="frm_submit_block">
		<div class="frm_submit_wrap">
			<div class="form-row">
				<div class="form-group col-md-12" id="content">
					<label for="qnaContent">내용</label>
					<textarea class="form-control ht-120" rows="50" cols="50" id="qnaContent" name="qnaContent">
					${vo.qnaContent}
					</textarea>
					<script>
						ClassicEditor.create( document.querySelector( '#qnaContent' ), {
						language: "ko"
					});
	 		</script>
				</div>
			</div>
		</div>
	</div>

	<div class="form-group" id="submitlist">
		<div class="col-lg-12 col-md-12">
			<button class="btn btn-theme" type="submit" id="btEdit"
				onclick="">
				<i class="fa fa-pen-nib"></i> 수정
			</button>
			<button class="btn btn-theme" type="button" id="btlist"
				onclick="location.href='<c:url value='/qna/qnaList'/>'">
												<span class="ti-view-list"></span> 목록
											</button>

										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</section>
```

<img width="813" alt="qna수정" src="https://user-images.githubusercontent.com/105181325/180592510-b4ec8493-8a29-4e79-89bd-007de833ad10.png">
   
***

- 해당 글의 수정할 부분들을 작성 한 후 수정 버튼을 클릭하여 controller 로 보낸다.
- 글쓰기와 마찬가지로 ModelAttribute 어노테이션을 통해 QnaVO의 전체 필요 값을 가져 온 후, update 문을 실행한다.

```html
	<update id="updateQna" parameterType="qnaVo">
		update qna
		set qna_title=#{qnaTitle}, qna_content=#{qnaContent}
		<if test="fileName !=null and fileName != ''">
			, file_Name=#{fileName}, file_Size=#{fileSize},
			original_File_Name=#{originalFileName}
		</if>
		where qna_no=#{qnaNo}
	</update>
```
- 업로드할 파일이 있면 xml의 if문을 포함한 채 실행하고, 없다면 qnano 조건을 통해 업데이트 한다.   

***
```java
@PostMapping("/qna/qnaEdit")
	public String edit_post(@ModelAttribute QnaVO vo,
			@RequestParam(required = false) String oldFileName,
			HttpServletRequest request, Model model) {
		logger.info("수정 처리, 파라미터 vo={}", vo);
		
		String msg="비밀번호 체크 실패!", url="/qna/qnaEdit?qnaNo="+vo.getQnaNo();
			//
			String fileName="", originalFileName="";
			long fileSize=0;
			List<Map<String, Object>> fileList=null;
			try {
				fileList
				=fileUploadUtil.fileUpload(request, QnaConstUtil.UPLOAD_FILE_FLAG);
				for(Map<String, Object> fileMap: fileList) {
					fileName=(String) fileMap.get("fileName");
					originalFileName=(String) fileMap.get("originalFileName");
					fileSize=(long) fileMap.get("fileSize");
				}//for
				
				logger.info("수정 처리-파일 업로드 성공!");
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
					e.printStackTrace();
			}
		
			vo.setFileName(fileName);
			vo.setOriginalFileName(originalFileName);
			vo.setFileSize(fileSize);
			//
			int cnt=qnaService.updateQna(vo);
			logger.info("글 수정 처리 결과, cnt={}", cnt);

			if(cnt>0) {
				msg="수정되었습니다.";
				url="/qna/qnaDetail?qnaNo="+vo.getQnaNo();
				
				if(!fileList.isEmpty()) {	//새로 파일 첨부한 경우
					if(oldFileName!=null && !oldFileName.isEmpty()) {
						//기존 파일이 있는 경우
						String uploadPath
						=fileUploadUtil.getUploadPath(request, QnaConstUtil.UPLOAD_FILE_FLAG);
						File oldFile = new File(uploadPath, oldFileName);
						if(oldFile.exists()) {
							boolean bool=oldFile.delete();
							logger.info("글수정-파일 삭제여부 : {}", bool);
						}
					}
				}
			}else {
				msg="글 수정 실패";
			}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
```
