<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  
	<해결과제>
	- 로그인 쪽 모달 카피
-->
<title>게시글 삭제</title>
<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>" />
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
$(function(){
	$('form[name=frmDelete]').submit(function(){
		if($.trim($('#pwd').val()).length<1){
				alert('비밀번호를 입력하세요!');
				$('#pwd').focus();
				event.preventDefault();
		}
	});
	/* 
	$('#btcancle').click(function(){
		self.close();
	});
	 */
});
</script>
</head>
<body>
	<section class="pt-0">
	<form name="frmDelete" method="post"  
		action="<c:url value='/board/delete'/>" >
		<input type="hidden" name="boardNo" value="${param.boardNo}" />
		<input type="hidden" name="fileName" value="${param.fileName}" />
		<div class="row">
			<div class="col-lg-8 col-md-7">
				<div class="property_block_wrap" id="delete_wrap">
					<div class="delete_header">
						<p class="center black">${param.boardNo}번 글을 삭제하시겠습니까?</p>
					</div>
					<div class="delete_body">
						<div class="form-group col-md-4" id="pwdchk">
							<label for="pwd">비밀번호확인</label>
							<input type="password" name="pwd"
								class="form-control" id="pwd">
						</div>

						<div class="form-group" id="submitlist">
							<div class="">
								<button class="btn btn-theme" type="submit" id="btdelete">
									<i class="fas fa-trash"></i> 삭제
								</button>
								<button class="btn btn-theme" type="button" id="btcancle"
									onclick="self.close()">
									<img src="<c:url value='/css/img/close.png'/>"
										style="width: 17px" /> 취소
								</button>

							</div>
						</div>
					</div>

				</div>

			</div>

		</div>
    </form>
	</section>
</body>
</html>

