<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
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
				<em class="board_category">질문</em>
			</c:when>
			<c:otherwise>
				<em class="board_category">일반</em>
			</c:otherwise>
		</c:choose>
		${vo.qnaTitle}
	</h3>
</div>
<div class="register_info right">
	<span class=""><i class="ti-user theme-cl">
			${vo.userId}</i></span> | <span class=""><i class="ti-calendar">
			<fmt:formatDate value="${vo.qnaRegdate}"
				pattern="yyyy-MM-dd HH:mm:ss" />
	</i></span> | <span><em class="ic ic_view"></em>${vo.readCount}</span> | <span
			class=""><i class="fa fa-share"> 공유</i></span> <em
			class="ic ic_more"></em>
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
		<!-- 
		 -->
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
		$('#btedit').click(function(){
			if($('#sessionId').val()!=$('#userId').val()){
				alert('권한이 없습니다.');
				event.preventDefault();
			}else{
				alert("이게맞는데");
				location.href="<c:url value='/qna/qnaEdit?qnaNo='/>"+$('#qnaNo').val();
			}
		});
		
		$('#btdelete').click(function(){
			var con=confirm('삭제하시겠습니까?');
			if($('#sessionId').val()!=$('#userId').val()){
				alert('권한이 없습니다.');
				event.preventDefault();
			}else{
				if(con){
					location.href="<c:url value='/qna/qnaDelete?qnaNo='/>"+$('#qnaNo').val();
				}else if(!con){
					event.preventDefault();
				}
			}
		});
	});
</script>

	<input type="text" id="sessionId" value="${sessionScope.userId }">
	<input type="text" id="userId" value="${vo.userId }">
	<input type="text" id="qnaNo" value="${vo.qnaNo }">
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
			</div>
		</div>

	</div>


</div>
<!-- /row -->

	</div>

</section>
<%@ include file="../inc/bottom.jsp"%>
