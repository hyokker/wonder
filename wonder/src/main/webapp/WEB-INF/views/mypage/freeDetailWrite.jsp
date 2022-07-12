<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="author" content="Themezhub" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>작업물 중개는 원더(WONDER)</title>
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		var introduction = "<c:out value='${expertVo.introduction}' />";
		console.log("introduction="+introduction);
		var after=introduction.replaceAll("\n","<br>");
		console.log("after="+after);
		$('#introduction').html(after);
	});
</script>
<body class="yellow-skin">


<div class="col-lg-12 col-md-12 col-sm-12 border">
	<div class="col-lg-12 col-md-12 col-sm-12 border">
		<a class="nav-brand" href=""> 
			<img src="${pageContext.request.contextPath}/img/logo.png"	class="logo" alt="원더의 메인 로고입니다" />
		</a> 
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 border">
		<div class="dash_user_avater">
			<c:if test="${profileVo.fileName !=null && profileVo.fileName != ''}">
				<a class="linkFreeWrite">
					<img src="<c:url value='/img/mypage/expert_profile/${profileVo.fileName }' />" class="img-fluid avater" alt="프로필이미지">
				</a>
			</c:if>
			<c:if test="${profileVo.fileName ==null || profileVo.fileName == ''}">
				<%-- <a href="<c:url value='/mypage/freeDetailWrite' />"> --%>
				<a class="linkFreeWrite">
					<img src="<c:url value='/img/mypage/default_profile.png' />" class="img-fluid avater" alt="프로필이미지">
				</a>
			</c:if>
		<h3>${memVo.nickname }</h3>
		<h4>${userId }</h4>
		<span>${memVo.email }</span>
		</div>
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 border" id="introduction">
		<% pageContext.setAttribute("newLine","\n"); %>
		${fn:replace(expertVo.introduction, newLine, "<br/>") }
	</div>
	


</div>

</body>
</html>