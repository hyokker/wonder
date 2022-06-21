<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
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
								<h2 class="breadcrumb-title">${userId }님의 개인페이지입니다</h2>
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
								<div>
									<input type="button" value="일반회원" id="genaral">
									<input type="button" value="프리랜서" id="free">
									<script type="text/javascript">
										$(function(){
											$('#genaral').click(function(){
												location.href="<c:url value='/mypage/dashboard/general' />";
											});
											$('#free').click(function(){
												location.href="<c:url value='/mypage/dashboard/free' />";
											});
										});
									</script>
								</div>
								<div class="dash_user_avater">
									<img src="<c:url value='/img/mypage/default_profile.png' />" class="img-fluid avater" alt="">
									<h4>${userId }</h4>
									<span>${vo.email }</span>
								</div>
								<script type="text/javascript">
									$(function(){
										var page=$('#pageCheck').val();
										
										if(page=='dashboard'){
											$('.dash_user_menues ul li:eq(0)').addClass("active");
										}else if(page=='profile'){
											$('.dash_user_menues ul li:eq(1)').addClass("active");
										}else if(page=='bookmark'){
											$('.dash_user_menues ul li:eq(2)').addClass("active");
										}else if(page=='transaction'){
											$('.dash_user_menues ul li:eq(3)').addClass("active");
										}else if(page=='chatting'){
											$('.dash_user_menues ul li:eq(4)').addClass("active");
										}else if(page=='changePwd'){
											$('.dash_user_menues ul li:eq(5)').addClass("active");
										}
										
										
									});
								</script>
								<div class="dash_user_menues">
									<ul>
										<li><a href="<c:url value='/mypage/dashboard' />"><i class="fa fa-tachometer-alt"></i>대시보드<span class="notti_coun style-1">4</span></a></li>
										<li><a href="<c:url value='/mypage/profile' />"><i class="fa fa-user-tie"></i>내 정보</a></li>
										<li><a href="<c:url value='/mypage/bookmark' />"><i class="fa fa-bookmark"></i>찜해둔 상품<span class="notti_coun style-2">7</span></a></li>
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