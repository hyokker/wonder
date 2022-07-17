<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>chartJS</title>
<body>
<style>
#chart-container {
	float: right;
	position: center;
	left: -50;
}

canvas {
	float: right;
	width: 40%;
	position: right;
	left: -30%;
}
</style>
	<h1>게시물데이터그래프화</h1>
	<canvas id="myChart" align="center"></canvas>
	<canvas id="myChart2"></canvas>
	<canvas id="myChart3"></canvas>
	<canvas id="myChart4"></canvas>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
	<script>
		//차트 색상 랜덤
		$(function() {
			function randomColor(labels) {
				var colors = [];
				for (let i = 0; i < labels.length; i++) {
					colors.push("#" + Math.round(Math.random() * 0xffffff).toString(16));
				}
				return colors;
			}
			function makeChart(ctx, type, labels, data) {
				var myChart = new Chart(ctx, {
					type : type,
					data : {
						labels : labels,
						datasets : [ {
							label : '날짜별 게시글 등록 수',
							data : data,
							backgroundColor : randomColor(labels)
						} ]
					},
					options : {
						responsive : false,
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
			}

			$.ajax({
				type : "GET",
				url : "<c:url value='/admin/ajaxChart'/>",
				dataType : "json",
				success : function(data, status, xhr) {

					console.log(data);

					let labels = [];
					let myData = [];
					
					$.each(data.list, function(k, v) {
						labels.push(v.reg_date);
						myData.push(v.count);
					});
					
					let newLabels = labels.slice(-5);
					let newMyData = myData.slice(-5);

					// Chart.js 막대그래프 그리기
					let ctx = $('#myChart');
					makeChart(ctx, 'bar', newLabels, newMyData);
					// Chart.js 선그래프 그리기
					ctx = $('#myChart2');
					makeChart(ctx, 'line', newLabels, newMyData);
					// Chart.js 원그래프 그리기
					ctx = $('#myChart3');
					makeChart(ctx, 'pie', newLabels, newMyData);
					ctx = $('#myChart4');
					makeChart(ctx, 'doughnut', newLabels, newMyData);
				}
			});

		});
	</script>
</body>
</html>