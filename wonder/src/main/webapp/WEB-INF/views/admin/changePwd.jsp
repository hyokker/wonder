<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!-- ============================================================== -->
<!-- Top header  -->
<!-- ============================================================== -->

<!-- ============================ Page Title Start================================== -->
<div class="page-title"
	style="background: #f4f4f4 url(https://via.placeholder.com/1920x980);"
	data-overlay="5">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<div class="breadcrumbs-wrap">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active" aria-current="page">Change
							Password</li>
					</ol>
					<h2 class="breadcrumb-title">비밀번호 변경</h2>
				</div>

			</div>
		</div>
	</div>
</div>
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
						<h4>Adam Harshvardhan</h4>
						<span>Canada USA</span>
					</div>

					<div class="dash_user_menues">
						<ul>
							<li><a href="dashboard.html"><i
									class="fa fa-tachometer-alt"></i>매출현황 통계<span
									class="notti_coun style-1">4</span></a></li>
							<li><a href="my-profile.html"><i class="fa fa-user-tie"></i>내 정보</a></li>
							<li><a href="bookmark-list.html"><i
									class="fa fa-bookmark"></i>거래대기 목록<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="my-property.html"><i class="fa fa-tasks"></i>회원관리</a></li>
							<li><a href="messages.html"><i class="fa fa-envelope"></i>채팅 목록<span
									class="notti_coun style-3">3</span></a></li>
							<li><a href="choose-package.html"><i class="fa fa-gift"></i>대시보드 목록<span class="expiration">10 days left</span></a></li>
							<li><a href="submit-property-dashboard.html"><i
									class="fa fa-pen-nib"></i>부서별 관리자 생성</a></li>
							<li class="active"><a href="change-password.html"><i
									class="fa fa-unlock-alt"></i>비밀번호 변경</a></li>
						</ul>
					</div>

					<div class="dash_user_footer">
						<ul>
							<li><a href="#"><i class="fa fa-power-off"></i></a></li>
							<li><a href="#"><i class="fa fa-comment"></i></a></li>
							<li><a href="#"><i class="fa fa-cog"></i></a></li>
						</ul>
					</div>

				</div>
			</div>

			<div class="col-lg-9 col-md-8">
				<div class="dashboard-body">

					<div class="dashboard-wraper">

						<!-- Basic Information -->
						<div class="frm_submit_block">
							<h4>비밀번호를 변경하세요</h4>
							<div class="frm_submit_wrap">
								<div class="form-row">

									<div class="form-group col-lg-12 col-md-6">
										<label>이전 비밀번호</label> <input type="password"
											class="form-control">
									</div>

									<div class="form-group col-md-6">
										<label>새로운 비밀번호</label> <input type="password"
											class="form-control">
									</div>

									<div class="form-group col-md-6">
										<label>비밀번호 확인</label> <input type="password"
											class="form-control">
									</div>

									<div class="form-group col-lg-12 col-md-12">
										<button class="btn btn-theme" type="submit">변경사항 저장</button>
									</div>

								</div>
							</div>
						</div>

					</div>

				</div>
			</div>

		</div>
	</div>
</section>
<!-- ============================ User Dashboard End ================================== -->
<%@ include file="../inc/bottom.jsp"%>