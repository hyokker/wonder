<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- ============================ Call To Action ================================== -->
<section class="theme-bg call_action_wrap-wrap">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="call_action_wrap">
					<div class="call_action_wrap-head">
						<h3>원더의 프리랜서가 당신의 연락을 기다립니다</h3>
					</div>
					<a href="<c:url value='/contactUs/contactUs'/>" class="btn btn-call_action_wrap">문의하기</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!-- ============================ Call To Action End ================================== -->

<!-- ============================ Footer Start ================================== -->
<footer class="dark-footer skin-dark-footer style-2">
	<div class="footer-middle">
		<div class="container">
			<div class="row">

				<div class="col-lg-5 col-md-5">
					<div class="footer_widget">
						<!-- img src="${pageContext.request.contextPath}/img/logo-light.png" class="img-footer small mb-2" alt="" / -->
						<h4 class="extream mb-3">WONDER</h4>
						<p style="font-size: 1.4em">원더는 실력있는 개발자, 디자이너와 함께합니다</p>
					</div>
				</div>

				<div class="col-lg-6 col-md-7 ml-auto">
					<div class="row">

						<div class="col-lg-4 col-md-4">
							<div class="footer_widget">
								<h4 class="widget_title">Service</h4>
								<ul class="footer-menu">
									<li><a href="#">서비스소개</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">고객센터</a></li>
								</ul>
							</div>
						</div>

						<div class="col-lg-4 col-md-4">
							<div class="footer_widget">
								<h4 class="widget_title">Company</h4>
								<ul class="footer-menu">
									<li><a href="#">회사소개</a></li>
									<li><a href="#">채용정보</a></li>
									<li><a href="#">제휴제안</a></li>
								</ul>
							</div>
						</div>

						<div class="col-lg-4 col-md-4">
							<div class="footer_widget">
								<h4 class="widget_title">Provision</h4>
								<ul class="footer-menu">
									<li><a href="#">이용약관</a></li>
									<li><a href="#">개인정보처리방침</a></li>
									<li><a href="#">위치기반서비스 이용약관</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-bottom">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12 col-md-12 text-center">
					<p class="mb-0">© WONDER Corp</p>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- ============================ Footer End ================================== -->

<!-- Log In Modal -->
<div class="modal fade" id="login" tabindex="-1" role="dialog"
	aria-labelledby="registermodal" aria-hidden="true">
	<div class="modal-dialog modal-xl login-pop-form" role="document">
		<div class="modal-content overli" id="registermodal">
			<div class="modal-body p-0">
				<div class="resp_log_wrap">
					<div class="resp_log_thumb"
						style="background:url(${pageContext.request.contextPath}/img/log.jpg)no-repeat;"></div>
					<div class="resp_log_caption">
						<span class="mod-close" data-dismiss="modal" aria-hidden="true"><i
							class="ti-close"></i></span>
						<div class="edlio_152">
							<ul class="nav nav-pills tabs_system center" id="pills-tab"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="pills-login-tab" data-toggle="pill" href="#pills-login"
									role="tab" aria-controls="pills-login" aria-selected="true"><i
										class="fas fa-sign-in-alt mr-2"></i>로그인</a></li>
								<li class="nav-item"><a class="nav-link"
									id="pills-signup-tab" data-toggle="pill" href="#pills-signup"
									role="tab" aria-controls="pills-signup" aria-selected="false"><i
										class="fas fa-user-plus mr-2"></i>회원가입</a></li>
							</ul>
						</div>
						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-login"
								role="tabpanel" aria-labelledby="pills-login-tab">
								<div class="login-form">
								<!-- 로그인 -->
									<form name="loginForm" action="" method="post" >
										<div class="form-group">
											<label>회원 아이디</label>
											<div class="input-with-icon">
												<input type="text" class="form-control"> <i
													class="ti-user"></i>
											</div>
										</div>

										<div class="form-group">
											<label>비밀 번호</label>
											<div class="input-with-icon">
												<input type="password" class="form-control"> <i
													class="ti-unlock"></i>
											</div>
										</div>

										<div class="form-group">
											<div class="eltio_ol9">
												<div class="eltio_k1">
													<input id="dd" class="checkbox-custom" name="dd"
														type="checkbox"> <label for="dd"
														class="checkbox-custom-label">아이디 기억</label>
												</div>
												<div class="eltio_k2">
													<a href="#">비밀번호를 잊어버리셨나요?</a>
												</div>
											</div>
										</div>

										<div class="form-group">
											<button type="submit" class="btn btn-md full-width pop-login">로그인</button>
										</div>

									</form>
								</div>
							</div>
							<div class="tab-pane fade" id="pills-signup" role="tabpanel"
								aria-labelledby="pills-signup-tab">
								<div class="login-form">
								<!-- 회원가입 -->
									<form name="registerForm" action="<c:url value='/aboutUs/aboutUs'/>" method="post">
										<div class="form-group">
											<label>회원 ID</label>
											<div class="input-with-icon">
												<input type="text" class="form-control" name="userId">
												<i class="ti-user"></i>
											</div>
										</div>
										<div class="form-group">
											<label>이름</label>
											<div class="input-with-icon">
												<input type="text" class="form-control" name="name">
												<i class="ti-user"></i>
											</div>
										</div>
										<div class="form-group">
											<label>비밀번호</label>
											<div class="input-with-icon">
												<input type="password" class="form-control" name="pwd">
												<i class="ti-unlock"></i>
											</div>
										</div>
										<div class="form-group">
											<label>비밀번호 확인</label>
											<div class="input-with-icon">
												<input type="password" class="form-control" name="checkPwd">
												<i class="ti-unlock"></i>
											</div>
										</div>

										<div class="form-group">
											<label>이메일</label>
											<div class="input-with-icon">
												<input type="email" class="form-control" name="email">
												<i class="ti-user"></i>
											</div>
										</div>
										<div class="form-group">
											<label>연락처</label>
											<div class="input-with-icon">
												<input type="text" class="form-control" name="hp"> <i
													class="ti-user"></i>
											</div>
										</div>

										<div class="form-group">
											<div class="eltio_ol9">
												<div class="eltio_k1">
													<input id="dd" class="checkbox-custom" name="dd"
														type="checkbox"> <label for="dd"
														class="checkbox-custom-label">이용약관에 동의 해주세요.</label>
												</div>
											</div>
										</div>

										<div class="form-group">
											<button type="submit" class="btn btn-md full-width pop-login">회원
												가입</button>
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Modal -->

<!-- Video Modal -->
<div class="modal fade" id="popup-video" tabindex="-1" role="dialog"
	aria-labelledby="popup-video" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<iframe class="embed-responsive-item" class="full-width" height="480"
			src="https://www.youtube.com/embed/qN3OueBm9F4?rel=0" frameborder="0"
			allowfullscreen></iframe>
	</div>
</div>
<!-- End Video Modal -->

<a id="back2Top" class="top-scroll" title="Back to top" href="#"><i
	class="ti-arrow-up"></i></a>


</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/js/select2.min.js'"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slick.js"></script>
<script src="${pageContext.request.contextPath}/js/slider-bg.js"></script>
<script src="${pageContext.request.contextPath}/js/lightbox.js"></script>
<script src="${pageContext.request.contextPath}/js/imagesloaded.js"></script>
<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

<!-- Date Booking Script -->
<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>

<!-- 대시보드 js -->
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath}/js/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/js/morris.min.js"></script>

<!-- Custom Morrisjs JavaScript -->
<script src="${pageContext.request.contextPath}/js/morris.js"></script>

<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>
</html>