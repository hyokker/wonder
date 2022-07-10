<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!-- ============================================================== -->
<!-- Top header  -->
<!-- ============================================================== -->
<!-- ============================ Page Title Start================================== -->
<%@ include file="../adminInc/pageTitle.jsp"%>
<!-- ============================ Page Title End ================================== -->


<!-- ============================ User Dashboard ================================== -->
<section class="gray pt-5 pb-5">
	<div class="container-fluid">

		<div class="row">
			<input type="hidden" id="link" value="dashboard">
			<%@ include file="../admin/menubar.jsp"%>


			<div class="col-lg-9 col-md-8">
				<div class="dashboard-body">

					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<h4>
								Wonder 현황 통계: <span class="pc-title theme-cl">Wonder
									Status Statistics</span>
							</h4>
						</div>
					</div>

					<div class="countMembers"></div>

					<div class="row">

						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="dashboard_stats_wrap widget-1">
								<div class="dashboard_stats_wrap_content">
									<h4>${sumAllSales}원</h4>
									<span>누적매출</span>
								</div>
								<div class="dashboard_stats_wrap-icon">
									<i class="ti-money"></i>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="dashboard_stats_wrap widget-1">
								<div class="dashboard_stats_wrap_content">
									<h4>${monthlySales}원</h4>
									<span>월매출</span>
								</div>
								<div class="dashboard_stats_wrap-icon">
									<i class="ti-money"></i>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="dashboard_stats_wrap widget-3">
								<div class="dashboard_stats_wrap_content">
									<h4>${countProduct}건</h4>
									<span>상품수</span>
								</div>
								<div class="dashboard_stats_wrap-icon">
									<i class="ti-receipt"></i>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="dashboard_stats_wrap widget-2">
								<div class="dashboard_stats_wrap_content">
									<h4>${countMembers}명</h4>
									<span>누적가입자수</span>
								</div>
								<div class="dashboard_stats_wrap-icon">
									<i class="ti-stats-up"></i>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="dashboard_stats_wrap widget-2">
								<div class="dashboard_stats_wrap_content">
									<h4>${countExperts}명</h4>
									<span>누적프리랜서수</span>
								</div>
								<div class="dashboard_stats_wrap-icon">
									<i class="ti-stats-up"></i>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="dashboard_stats_wrap widget-3">
								<div class="dashboard_stats_wrap_content">
									<h4>${countPayment}건</h4>
									<span>누적거래건수</span>
								</div>
								<div class="dashboard_stats_wrap-icon">
									<i class="ti-receipt"></i>
								</div>
							</div>
						</div>


					</div>
					<!--  row -->

					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-header">
									<h4 class="mb-0">년도별 매출 비교</h4>
								</div>
								<!-- 대시보드 -->

								<canvas id="line-chart" width="100" height="30"></canvas>
								<script>
									new Chart(
											document
													.getElementById("line-chart"),
											{
												type : 'line',
												data : {
													labels : [ 1500, 1600,
															1700, 1750, 1800,
															1850, 1900, 1950,
															1999, 2050 ],
													datasets : [
															{
																data : [ 86,
																		114,
																		106,
																		106,
																		107,
																		111,
																		133,
																		221,
																		783,
																		2478 ],
																label : "Africa",
																borderColor : "#3e95cd",
																fill : false
															},
															{
																data : [ 282,
																		350,
																		411,
																		502,
																		635,
																		809,
																		947,
																		1402,
																		3700,
																		5267 ],
																label : "Asia",
																borderColor : "#8e5ea2",
																fill : false
															},
															{
																data : [ 168,
																		170,
																		178,
																		190,
																		203,
																		276,
																		408,
																		547,
																		675,
																		734 ],
																label : "Europe",
																borderColor : "#3cba9f",
																fill : false
															},
															{
																data : [ 40,
																		20, 10,
																		16, 24,
																		38, 74,
																		167,
																		508,
																		784 ],
																label : "Latin America",
																borderColor : "#e8c3b9",
																fill : false
															},
															{
																data : [ 6, 3,
																		2, 2,
																		7, 26,
																		82,
																		172,
																		312,
																		433 ],
																label : "North America",
																borderColor : "#c45850",
																fill : false
															} ]
												},
												options : {
													title : {
														display : true,
														text : 'World population per region (in millions)'
													}
												}
											});
								</script>

							</div>
						</div>
					</div>
					<!-- row -->

					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="mb-0">최근 의뢰서 목록</h4>
								</div>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table table-lg table-hover">
											<thead>
												<tr>
													<th>제목</th>
													<th>프리랜서명</th>
													<th>결제여부</th>
													<th>금액</th>
													<th>의뢰일</th>
												</tr>
											</thead>

											<tbody>

												<c:if test="${!empty list}">
													<c:forEach var="formVo" items="${list }">
														<tr>
															<td><a href="#"><img
																	src="https://via.placeholder.com/800x500"
																	class="avatar avatar-30 mr-2" alt="Avatar">${formVo.formTitle }</a></td>
															<td>${formVo.PUserId}</td>
															<td><c:if test="${formVo.payFlag eq 'Y'}">
																	<div class="label text-success bg-success-light">결제완료</div>
																</c:if> <c:if test="${formVo.payFlag eq 'N'}">
																	<div class="label text-danger bg-danger-light">결제전</div>
																</c:if></td>
															<td>${formVo.price }원</td>
															<td>${formVo.formRegdate }</td>
														</tr>
													</c:forEach>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- row -->

				</div>
			</div>

		</div>
	</div>
</section>
<!-- ============================ User Dashboard End ================================== -->
<%@ include file="../inc/bottom.jsp"%>