<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<title>chart.js 테스트</title>
<script type="text/javascript">
	let jsonData = ${json}
	let jsonObject = JSON.stringify(jsonData);
	let jData = JSON.parse(jsonObject);

	function colorize() {
		var r = Math.floor(Math.random() * 200);
		var g = Math.floor(Math.random() * 200);
		var b = Math.floor(Math.random() * 200);
		var color = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)';
		return color;
	}

	let labelList = new Array();
	let valueList = new Array();
	let colorList = new Array();

	for (let i = 0; i < jData.length; i++) {
		let dt = jData[i];
		labelList.push(dt.method);
		valueList.push(dt.price);
		colorList.push(colorize());
	}

	let data = {
		labels : labelList,
		datasets : [ {
			backgroundColor : colorList,
			data : valueList
		} ],
		options : {
			title : {
				display : true,
				text : '결제방식 별 누적 매출'
			}
		}
	};

	$(function() {
		let ctx1 = document.getElementById('CHART1').getContext('2d');
		new Chart(ctx1, {
			type : 'pie',
			data : data
		});
	});
</script>
</head>
<body>
	<h5 style="text-align: center;">유저별 그래프</h5>
	<canvas id="CHART1" style="width: 600px; height: 400px;"></canvas>
</body>
</html>