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
									<img src="<c:url value='/img/mypage/default_profile.png' />" class="img-fluid avater" alt="">
									<h4>${userId }</h4>
									<span>${vo.email }</span>
								</div>
								
								<div class="dash_user_menues">
									<ul>
										<li><a href="<c:url value='/mypage/dashboard' />"><i class="fa fa-tachometer-alt"></i>대시보드<span class="notti_coun style-1">4</span></a></li>
										<li><a href="<c:url value='/mypage/profile' />"><i class="fa fa-user-tie"></i>내 정보</a></li>
										<li class="active"><a href="<c:url value='/mypage/bookmark' />"><i class="fa fa-bookmark"></i>찜해둔 상품<span class="notti_coun style-2">7</span></a></li>
										<li><a href="<c:url value='/mypage/transaction' />"><i class="fa fa-tasks"></i>거래내역</a></li>
										<li><a href="<c:url value='/mypage/chatting' />"><i class="fa fa-envelope"></i>채팅<span class="notti_coun style-3">3</span></a></li>
										<li><a href="<c:url value='/mypage/changePwd' />"><i class="fa fa-unlock-alt"></i>암호변경</a></li>
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
								
									<!-- Bookmark Property -->
									<div class="frm_submit_block">	
										<h4>찜해둔 상품 목록</h4>
									</div>
									
									<table class="property-table-wrap responsive-table bkmark">

										<tbody>
											<tr>
												<th><i class="fa fa-file-text"></i> 상품목록</th>
												<th></th>
											</tr>

											<!-- Item #1 -->
											<tr>
												<td class="dashboard_propert_wrapper">
													<img src="<c:url value='/img/mypage/bookmark/ex01.jpg' />" alt="찜목록 사진">
													<div class="title">
														<h4><a href="#">디자인여기야</a></h4>
														<span>사용자가 사용하기 편안한 반응형 홈페이지를 제작해 드립니다.
 </span>
														<span class="table-property-price">100,000 원</span>
													</div>
												</td>
												<td class="action">
													<a href="#" class="delete"><i class="ti-close"></i> Delete</a>
												</td>
											</tr>

											<!-- Item #2 -->
											<tr>
												<td class="dashboard_propert_wrapper">
													<img src="<c:url value='/img/mypage/bookmark/ex02.jpg' />" alt="찜목록 사진">
													<div class="title">
														<h4><a href="#">메이크홈즈</a></h4>
														<span>SEO최적화 거품없는 가격으로 반응형 홈페이지 제작해 드립니다.</span>
														<span class="table-property-price">550,000 원</span>
													</div>
												</td>
												<td class="action">
													<a href="#" class="delete"><i class="ti-close"></i> Delete</a>
												</td>
											</tr>

											<!-- Item #3 -->
											<tr>
												<td class="dashboard_propert_wrapper">
													<img src="<c:url value='/img/mypage/bookmark/ex03.png' />" alt="찜목록 사진">
													<div class="title">
														<h4><a href="#">빌러블</a></h4>
														<span>디자인 파일을 주시면 퍼블리싱해 드립니다. </span>
														<span class="table-property-price">55,000 원</span>
													</div>
												</td>
												<td class="action">
													<a href="#" class="delete"><i class="ti-close"></i> Delete</a>
												</td>
											</tr>

											<!-- Item #4 -->
											<tr>
												<td class="dashboard_propert_wrapper">
													<img src="<c:url value='/img/mypage/bookmark/ex04.jpg' />" alt="찜목록 사진">
													<div class="title">
														<h4><a href="#">따따따디자인</a></h4>
														<span> 반응형 홈페이지제작 및 기업 맞춤형 홈페이지 제작해 드립니다. </span>
														<span class="table-property-price">550,000 원</span>
													</div>
												</td>
												<td class="action">
													<a href="#" class="delete"><i class="ti-close"></i> Delete</a>
												</td>
											</tr>

										</tbody>
									</table>
									
								</div>
								
								<div class="row">
									<div class="col-md-12 col-lg-12 mt-4">
										<footer class="text-center">
											<p class="mb-0">© 2019 Rikada. Designd By <a href="https://themezhub.com">Themez Hub</a> All Rights Reserved</p>
										</footer>
									</div>
								</div>
								<!-- row -->
							
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- ============================ User Dashboard End ================================== -->


<%@ include file="../inc/bottom.jsp" %>