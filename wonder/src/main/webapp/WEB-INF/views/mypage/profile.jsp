<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp" %>


			<!-- ============================================================== -->
			<!-- Top header  -->
			<!-- ============================================================== -->
			
			<!-- ============================ Page Title Start================================== -->
			<div class="page-title" style="background:#f4f4f4 url(https://via.placeholder.com/1920x980);" data-overlay="5">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							
							<div class="breadcrumbs-wrap">
								<ol class="breadcrumb">
									<li class="breadcrumb-item active" aria-current="page">My Profile</li>
								</ol>
								<h2 class="breadcrumb-title">My Account & Profile</h2>
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
						
						<div class="col-lg-3 col-md-4 col-sm-12">
							<div class="property_dashboard_navbar">
								
								<div class="dash_user_avater">
									<img src="https://via.placeholder.com/500x500" class="img-fluid avater" alt="">
									<h4>홍길동</h4>
									<span>서울특별시 마포구</span>
								</div>
								
								<div class="dash_user_menues">
									<ul>
										<li><a href="<c:url value='/mypage/dash' />"><i class="fa fa-tachometer-alt"></i>대시보드<span class="notti_coun style-1">4</span></a></li>
										<li class="active"><a href="<c:url value='/mypage/profile' />"><i class="fa fa-user-tie"></i>내 정보</a></li>
										<li><a href="<c:url value='/mypage/bookmark' />"><i class="fa fa-bookmark"></i>찜해둔 상품<span class="notti_coun style-2">7</span></a></li>
										<li><a href="<c:url value='/mypage/dash' />"><i class="fa fa-tasks"></i>거래내역</a></li>
										<li><a href="<c:url value='/mypage/dash' />"><i class="fa fa-envelope"></i>채팅<span class="notti_coun style-3">3</span></a></li>
										<li><a href="<c:url value='/mypage/dash' />"><i class="fa fa-gift"></i>Choose Package<span class="expiration">10 days left</span></a></li>
										<li><a href="<c:url value='/mypage/dash' />"><i class="fa fa-pen-nib"></i>내 정보 수정</a></li>
										<li><a href="<c:url value='/mypage/dash' />"><i class="fa fa-unlock-alt"></i>암호변경</a></li>
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
						
						<div class="col-lg-9 col-md-8 col-sm-12">
							<div class="dashboard-body">
							
								<div class="dashboard-wraper">
								
									<!-- Basic Information -->
									<div class="frm_submit_block">	
										<h4>나의 계정 정보</h4>
										<div class="frm_submit_wrap">
											<div class="form-row">
											
												<div class="form-group col-md-6">
													<label>이름</label>
													<input type="text" class="form-control" value="오지훈">
												</div>
												
												<div class="form-group col-md-6">
													<label>이메일</label>
													<input type="email" class="form-control" value="highzess@gmail.com">
												</div>
												
												<div class="form-group col-md-6">
													<label>닉네임</label>
													<input type="text" class="form-control" value="하이제스">
												</div>
												
												<div class="form-group col-md-6">
													<label>연락처</label>
													<input type="text" class="form-control" value="010-2672-6320">
												</div>
												
												<div class="form-group col-md-6">
													<label>가입일</label>
													<input type="text" class="form-control" value="2022년 06월 12일">
												</div>
												
												<div class="form-group col-md-6">
													<label>회원분류</label>
													<input type="text" class="form-control" value="일반회원">
												</div>
												
												<!-- <div class="form-group col-md-6">
													<label>State</label>
													<input type="text" class="form-control" value="Canada">
												</div>
												
												<div class="form-group col-md-6">
													<label>Zip</label>
													<input type="text" class="form-control" value="160052">
												</div> 
												
												<div class="form-group col-md-12">
													<label>About</label>
													<textarea class="form-control">Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper</textarea>
												</div>-->
												
											</div>
										</div>
									</div>
									
									<div class="frm_submit_block">	
										<!-- <h4>Social Accounts</h4> -->
										<div class="frm_submit_wrap">
											<div class="form-row">
											
												<!-- <div class="form-group col-md-6">
													<label>Facebook</label>
													<input type="text" class="form-control" value="https://facebook.com/">
												</div>
												
												<div class="form-group col-md-6">
													<label>Twitter</label>
													<input type="email" class="form-control" value="https://twitter.com/">
												</div>
												
												<div class="form-group col-md-6">
													<label>Google Plus</label>
													<input type="text" class="form-control" value="https://googleplus.com">
												</div>
												
												<div class="form-group col-md-6">
													<label>LinkedIn</label>
													<input type="text" class="form-control" value="https://linkedin.com/">
												</div> -->
												
												<div class="form-group col-lg-12 col-md-12 mt-4">
													<button class="btn btn-theme btn-lg" type="submit">변경사항 적용</button>
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