<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>엑셀 업로드</title>
</head>
<body>
	<form action="<c:url value='/admin/excelRead'/>" method="POST" enctype="multipart/form-data">
		<input type="file" name="file">
		<input type="submit" value="제출" />
	</form>
</body>
</html>