<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp" %>
<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">

			<!-- ============================================================== -->
			<!-- Top header  -->
			<!-- ============================================================== -->
			
			<!-- ============================ Page Title Start================================== -->
			<div class="page-title" style="background:#f4f4f4 url(<c:url value='/img/mypage/mypage_banner.jpg' />);" data-overlay="5">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							
							<div class="breadcrumbs-wrap">
								<ol class="breadcrumb">
									<li class="breadcrumb-item active" aria-current="page">반갑습니다</li>
								</ol>
								<h2 class="breadcrumb-title">오지훈님의 개인페이지입니다</h2>
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
									<img src="https://via.placeholder.com/500x500" class="img-fluid avater" alt="">
									<h4>Adam Harshvardhan</h4>
									<span>Canada USA</span>
								</div>
								
								<div class="dash_user_menues">
									<ul>
										<li><a href="<c:url value='/mypage/dashboard' />"><i class="fa fa-tachometer-alt"></i>대시보드<span class="notti_coun style-1">4</span></a></li>
										<li><a href="<c:url value='/mypage/profile' />"><i class="fa fa-user-tie"></i>내 정보</a></li>
										<li><a href="<c:url value='/mypage/bookmark' />"><i class="fa fa-bookmark"></i>찜해둔 상품<span class="notti_coun style-2">7</span></a></li>
										<li><a href="<c:url value='/mypage/transaction' />"><i class="fa fa-tasks"></i>거래내역</a></li>
										<li><a href="<c:url value='/mypage/chatting' />"><i class="fa fa-envelope"></i>채팅<span class="notti_coun style-3">3</span></a></li>
										<li class="active"><a href="<c:url value='/mypage/changePwd' />"><i class="fa fa-unlock-alt"></i>암호변경</a></li>
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
										<h4>Change Your Password</h4>
										<div class="frm_submit_wrap">
											<div class="form-row">
											
												<div class="form-group col-lg-12 col-md-6">
													<label>Old Password</label>
													<input type="password" class="form-control">
												</div>
												
												<div class="form-group col-md-6">
													<label>New Password</label>
													<input type="password" class="form-control">
												</div>
												
												<div class="form-group col-md-6">
													<label>Confirm password</label>
													<input type="password" class="form-control">
												</div>
												
												<div class="form-group col-lg-12 col-md-12">
													<button class="btn btn-theme" type="submit">Save Changes</button>
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

			
<%@ include file="../inc/bottom.jsp" %>