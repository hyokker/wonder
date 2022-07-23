# QNA게시판 상세보기,수정,삭제,답변 기능 구현
   
- QNA게시판 상세보기
- 목록에 노출된 질문글을 클릭하면 질문글에 QnaNO (번호)를 파라미터로 넘겨서, 컨트롤러로 보낸다

```java
@RequestMapping("/qna/qnaDetail")
	public String detail(@RequestParam(defaultValue = "0") int qnaNo,
			HttpServletRequest request, Model model) {
		logger.info("게시글 상세보기 파라미터 qnaNo={}", qnaNo);
  
		if(qnaNo==0) {
			model.addAttribute("msg", "잘못된 url 접근입니다");
			model.addAttribute("url", "/qna/qnaList");
			return "/common/message";
		}

		QnaVO vo=qnaService.selectByNo(qnaNo);
		logger.info("상세보기결과, vo={}", vo);

		String fileInfo
		=fileUploadUtil.getFileInfo(vo.getOriginalFileName(), 
				vo.getFileSize(), request);

		model.addAttribute("vo", vo);
		model.addAttribute("fileInfo", fileInfo);
		
		return "/qna/qnaDetail";
	}

```   
- 상세보기 클릭시 상세보기 뷰페이지에, model을 통해 vo와 등록한 파일정보를 저장 후, 리턴한다. 이후 표현언어인 ${}을 사용해서, 각 저장된 값을 불러온다.
   
```html
<title>wonder - QNA게시판 상세보기</title>

<section class="gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-12">
				<div class="property_block_wrap">
					<div class="property_block_wrap_header">
						<!-- 제목 -->
						<div class="title">
							<h3 class="property_block_title">
								<c:choose>
									<c:when test="${vo.cateType=='Q'}">
										<em class="board_category">질문 -</em>
									</c:when>
									<c:otherwise>
										<em class="board_category">답변 -</em>
									</c:otherwise>
								</c:choose>
								${vo.qnaTitle}
							</h3>
						</div>
						<div class="register_info right">
							<span class=""> <c:if test="${vo.sortNo==0 }">
									<i class="ti-user theme-cl">${vo.userId}</i>
								</c:if> <c:if test="${vo.sortNo>0 }">
									<i class="ti-user theme-cl">관리자</i>
								</c:if>
							</span> | <span class=""> <i class="ti-calendar"> <fmt:formatDate
										value="${vo.qnaRegdate}" pattern="yyyy-MM-dd HH:mm:ss" />
							</i>
							</span> | <span> <em class="ic ic_view"></em>${vo.readCount}
							</span> | <span class=""> <i class="fa fa-share"> 공유</i>
							</span> <em class="ic ic_more"></em>
						</div>
						<hr>
					</div>
					<div class="block-body">
						<div class="right">
							<span class="upfile">첨부파일</span>
							<c:if test="${!empty vo.fileName }">
								<span> <a
									href="<c:url value='/qna/download?qnaNo=${param.qnaNo}&fileName=${vo.fileName}'/>">
										${fileInfo} </a></span>
							</c:if>
						</div>
						<%
						pageContext.setAttribute("newLine", "\r\n");
						%>
						<div class="lastDiv">
							<p class="content">${fn:replace(vo.qnaContent, newLine, "<br>")}</p>
						</div>
					</div>
					<hr>
					<div class="flex-end">
						<script type="text/javascript">
	$(function(){
		$('#btreply').click(function(){
			if($('#sessionAdmin').val().length > 1){
				location.href="<c:url value='/qna/qnaReply?qnaNo='/>"+$('#qnaNo').val();
			}
			else if($('#sessionId').val()==$('#userId').val()){
				alert('답변은 관리자만 가능합니다..');
				event.preventDefault();
			}
			else if($('#sessionId').val()!=$('#userId').val()){
				alert('답변은 관리자만 가능합니다..');
				event.preventDefault();
			}else{
				location.href="<c:url value='/qna/qnaReply?qnaNo='/>"+$('#qnaNo').val();
			}
		});
		
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


		
		$('#btdelete').click(function(){
			if($('#sessionAdmin').val().length > 1 ){
				var con=confirm('관리자님 삭제하시겠습니까?'); //변수에 집어넣어도 컨펌창은 뜬다.(if문 안에서 다시 선언해라)
				if(con){
					location.href="<c:url value='/qna/qnaDelete?qnaNo='/>"+$('#qnaNo').val();
				}else if(!con){
					event.preventDefault();
				}
				
			}else if($('#sessionId').val()!=$('#userId').val()){
				alert('권한이 없습니다.');
				event.preventDefault();
			}else{
				var con=confirm('삭제하시겠습니까?'); //변수에 집어넣어도 컨펌창은 뜬다.(if문 안에서 다시 선언해라)
				if(con){
					location.href="<c:url value='/qna/qnaDelete?qnaNo='/>"+$('#qnaNo').val();
				}else if(!con){
					event.preventDefault();
				}
			}
		});
	});
</script>

						<c:if test="${!empty sessionScope.adminId }">

							<c:if test="${vo.sortNo==0 }">
								<button class="btn btn-theme" type="button" id="btreply">
									<i class="fa fa-pen-nib"></i> 답변
								</button>
							</c:if>

							<button class="btn btn-theme" type="button" id="btedit">
								<i class="fa fa-pen-nib"></i> 수정
							</button>
							<button class="btn btn-theme" type="button" id="btdelete">
								<i class="fas fa-trash"></i> 삭제
							</button>
							<button class="btn btn-theme" type="button" id="btlist"
								onclick="location.href='<c:url value='/qna/qnaList'/>'">
								<span class="ti-view-list"></span> 목록
							</button>
						</c:if>
						<c:if test="${empty sessionScope.adminId }">

							<c:if test="${vo.sortNo==0 }">
								<button class="btn btn-theme" type="button" id="btreply">
									<i class="fa fa-pen-nib"></i> 답변
								</button>
							</c:if>

							<button class="btn btn-theme" type="button" id="btedit">
								<i class="fa fa-pen-nib"></i> 수정
							</button>
							<button class="btn btn-theme" type="button" id="btdelete">
								<i class="fas fa-trash"></i> 삭제
							</button>
							<button class="btn btn-theme" type="button" id="btlist"
								onclick="location.href='<c:url value='/qna/qnaList'/>'">
								<span class="ti-view-list"></span> 목록
							</button>
						</c:if>
					</div>
					<input type="hidden" id="sessionAdmin"value="${sessionScope.adminId }"> 
					<input type="hidden" id="sessionId" value="${sessionScope.userId }">
					<input type="hidden" id="userId" value="${vo.userId }">
					
					<input type="hidden" id="qnaNo" value="${vo.qnaNo }">
				</div>

			</div>


		</div>
		<!-- /row -->

	</div>

</section>
```
<img width="749" alt="qna뒤테일" src="https://user-images.githubusercontent.com/105181325/180592304-7327661c-f6fe-4daa-b5dc-3944946f3722.png">

