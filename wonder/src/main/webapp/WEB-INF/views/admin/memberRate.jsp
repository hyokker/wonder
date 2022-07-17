<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<canvas id="logChart" style="width: 300px; height: 400px;"></canvas>
	<canvas id="donutchart" style="width: 300px; height: 400px;"></canvas>
	<script>
	var ctx = document.getElementById("logChart").getContext('2d');
	var myChart = new Chart(ctx, {
		type : 'doughnut',
		data : {
			labels : [ "일반회원", "프리랜서" ],
			datasets : [ {
				data : [ '${NormalMem}', '${ExpertMem}' ],
				backgroundColor : [ 'rgba(39, 174, 96, 0.2)',
						'rgba(206, 2, 75, 0.2)'

				],
				borderColor : [ 'rgba(39,174,96,1)', 'rgba(206,2,75,1)'

				],
				borderWidth : 1
			} ]
		},
		options : {
			responsive: false,
	        plugins: {
	            legend: {
	                labels: {
	                    font: {
	                        size: 17,
	                    }
	                }
	            }
	        }
		}
	});
</script>
</body>
</html>