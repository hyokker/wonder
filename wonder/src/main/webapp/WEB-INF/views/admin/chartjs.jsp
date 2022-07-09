<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<title>chart.js 테스트</title>
<script type="text/javascript">
	$(document).ready(function() {
		getGraph();
	});

	function getGraph() {
		let timeList = [];
		let posList = [];

		$.ajax({
			url : "admin/chartjs",
			type : "get",
			data : {
				mb_id : "${signIn.mb_id}",
				pos_type : "거북목"
			},
			dataType : "json",
			success : function(data) {
				// console.log(data[0].pos_count);
				// 그래프로 나타낼 자료 리스트에 담기
				for (let i = 0; i < data.length; i++) {
					timeList.push(data[i].pos_time);
					posList.push(data[i].pos_count);
				}
				// console.log(timeList);
				// console.log(posList);  	
				// 그래프
				new Chart(document.getElementById("line-chart"), {
					type : 'line',
					data : {
						labels : timeList, // X축 
						datasets : [ {
							data : posList, // 값
							label : "거북목",
							borderColor : "#3e95cd",
							fill : false
						} ]
					},
					options : {
						title : {
							display : true,
							text : '주간 거북목'
						}
					}
				}); //그래프
			},
			error : function() {
				alert("실패");
			}

		}) // ajax	  
	} // getGraph
</script>
</head>
<body>

</body>
</html>