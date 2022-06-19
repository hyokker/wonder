<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서별 관리자 아이디 중복확인</title>
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function() {
		$('#signup').click(function() {
			$(opener.document).find('#adminId').val('${param.adminId}');
			$(opener.document).find('#duplicateCheck').val('Y');
			self.close();
		});
	});
</script>
</head>
<body>
	<h4>부서별 관리자 아이디 중복검사</h4>
	<form name="frmId" method="post"
		action="<c:url value='/member/checkUserid'/>">
		<div class="frm_submit_wrap">
			<div class="form-row">
				<div class="form-group col-lg-12 col-md-6">
					<input type="text" name="adminId" id="adminId" title="ID 입력"
						value="${param.adminId}">
				</div>
				<div class="form-group col-lg-12 col-md-12">
					<button class="btn btn-theme" type="submit" id="submit">아이디
						확인</button>
				</div>
				<c:if test="${result==UNUSABLE_ID}">
					<p>이미 등록된 아이디입니다</p>
				</c:if>
				<c:if test="${result==USABLE_ID}">
					<div class="form-group col-lg-12 col-md-12">
						<button class="btn btn-theme" type="button" id="btUse">사용하기</button>
					</div>
				</c:if>
	</form>
</body>
</html>









