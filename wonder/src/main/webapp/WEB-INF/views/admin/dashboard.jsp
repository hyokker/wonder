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

			<div class="col-lg-3 col-md-4">
				<div class="property_dashboard_navbar">

					<div class="dash_user_avater">
						<img src="https://via.placeholder.com/500x500"
							class="img-fluid avater" alt="">
						<h4>${adminVo.adminId }</h4>
						<span>관리자 계정</span>
					</div>

					<div class="dash_user_menues">

						<ul>
							<li class="active"><a
								href="<c:url value='/admin/dashboard'/>"><i
									class="fa fa-tachometer-alt"></i>매출현황 통계</a></li>
							<li><a href="<c:url value='/admin/memberList'/>"><i
									class="fa fa-users"></i>회원 관리<span class="notti_coun style-1">4</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalEx'/>"><i
									class="fa fa-check-square"></i>전문가 승인 대기 목록</a></li>
							<li><a href="<c:url value='/admin/pdList'/>"><i
									class="fa fa-tasks"></i>게시글 관리<span class="notti_coun style-1">5</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalList'/>"><i
									class="fa fa-bookmark"></i>거래대기 목록<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="<c:url value='/admin/subadminList'/>"><i
									class="fa fa-id-badge"></i>부서별 관리자 관리<span
									class="notti_coun style-3">3</span></a></li>
							<li><a href="<c:url value='/admin/editAccount'/>"><i
									class="fa fa-user-tie"></i>내 정보</a></li>
							<li><a href="<c:url value='/admin/createAdmin'/>"><i
									class="fa fa-plus-circle"></i>부서별 관리자 생성</a></li>
						</ul>
					</div>
					<div class="dash_user_footer">
						<ul>
							<li><a href="<c:url value='/admin/logout'/>"><i
									class="fa fa-power-off"></i></a></li>
							<li><a href="<c:url value='/admin/email'/>"><i
									class="fa fa-envelope"></i></a></li>
							<li><a href="#"><i class="fa fa-cog"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

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
								new Chart(document.getElementById("line-chart"), {
								  type: 'line',
								  data: {
								    labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
								    datasets: [{ 
								        data: [86,114,106,106,107,111,133,221,783,2478],
								        label: "Africa",
								        borderColor: "#3e95cd",
								        fill: false
								      }, { 
								        data: [282,350,411,502,635,809,947,1402,3700,5267],
								        label: "Asia",
								        borderColor: "#8e5ea2",
								        fill: false
								      }, { 
								        data: [168,170,178,190,203,276,408,547,675,734],
								        label: "Europe",
								        borderColor: "#3cba9f",
								        fill: false
								      }, { 
								        data: [40,20,10,16,24,38,74,167,508,784],
								        label: "Latin America",
								        borderColor: "#e8c3b9",
								        fill: false
								      }, { 
								        data: [6,3,2,2,7,26,82,172,312,433],
								        label: "North America",
								        borderColor: "#c45850",
								        fill: false
								      }
								    ]
								  },
								  options: {
								    title: {
								      display: true,
								      text: 'World population per region (in millions)'
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
									<h4 class="mb-0">Order Status</h4>
								</div>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table table-lg table-hover">
											<thead>
												<tr>
													<th>Name</th>
													<th>Product ID</th>
													<th>Status</th>
													<th>Price</th>
													<th>Date Created</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td><a href="#"><img
															src="https://via.placeholder.com/800x500"
															class="avatar avatar-30 mr-2" alt="Avatar">Luxury
															House</a></td>
													<td>#258475</td>
													<td><div class="label text-success bg-success-light">Paid</div></td>
													<td>$ 310</td>
													<td>04/10/2013</td>
												</tr>

												<tr>
													<td><a href="#"><img
															src="https://via.placeholder.com/800x500"
															class="avatar avatar-30 mr-2" alt="Avatar">Sargun
															Apartment</a></td>
													<td>#249578</td>
													<td><div class="label text-warning bg-warning-light">Pending</div></td>
													<td>$ 584.14</td>
													<td>05/08/2014</td>
												</tr>

												<tr>
													<td><a href="#"><img
															src="https://via.placeholder.com/800x500"
															class="avatar avatar-30 mr-2" alt="Avatar">Preet
															Silver City</a></td>
													<td>#248712</td>
													<td><div class="label text-danger bg-danger-light">Cancel</div></td>
													<td>$ 710.5</td>
													<td>11/05/2015</td>
												</tr>

												<tr>
													<td><a href="#"><img
															src="https://via.placeholder.com/800x500"
															class="avatar avatar-30 mr-2" alt="Avatar">Mount
															See Villa</a></td>
													<td>#287246</td>
													<td><div class="label text-success bg-success-light">Paid</div></td>
													<td>$ 482.70</td>
													<td>06/09/2016</td>
												</tr>

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

			<div id="container" style="width: 500px; height: 400px;"></div>

		</div>
	</div>
</section>
<!-- ============================ User Dashboard End ================================== -->
<%@ include file="../inc/bottom.jsp"%>