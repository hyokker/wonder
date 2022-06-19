<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col">
    <a class="btn btn-lg btn-secondary" th:href="@{/kakao/oauth}">카카오로 로그인하기</a>
</div>
<div class="col">
    <a class="btn btn-lg btn-secondary" th:href="@{/kakao/logout}">로그아웃</a>
</div>
<div class="col">
    <img th:src="${thumbnailImage}"><p class="text-right" th:if="${username != null}" th:text="${username} + '님, 안녕하세요!'"></p>
</div>
</body>
</html>