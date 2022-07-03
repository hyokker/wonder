<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
	crossorigin="anonymous" type="text/javascript"></script>
<!-- chart.js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	getTimeStamp();

	jQuery.ajax({ // $.ajax 와 동일한 표현
		url : "<c:url value='/admin/dashboard'/>",
		type : 'POST',
		dataType : 'json', //서버에서 보내줄 데이터 타입
		contentType : 'application/json;charset=utf-8',
		success : function(map) {
			console.log(map);
		}
		});
</script>
</head>
<body>
	<div class="chartjs">
		<div class="barchart">
			<canvas id="barchart" height="250" width="250"></canvas>
		</div>
	</div>
</body>
</html>