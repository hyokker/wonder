<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>



	<head>
		<meta charset="utf-8" />
		<meta name="author" content="Themezhub" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
        <title>RentUP - Residence & Real Estate Template</title>
		 
        <!-- Custom CSS -->
        <link href="assets/css/styles.css" rel="stylesheet">
		
    </head>
	
    <body class="yellow-skin">
	
		 <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
       <div class="preloader"></div>
		
        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
		
            <!-- ============================================================== -->
           
			<!-- ============================================================== -->
			
			<!-- ============================ Page Title Start================================== -->
		
			<!-- ============================ Page Title End ================================== -->
			
			<!-- ============================ Submit Property Start ================================== -->
			<section>
			
				<div class="container">
					<div class="row">
						
						
						<!-- Submit Form -->
						<div class="col-lg-12 col-md-12">
						
							<div class="submit-page p-0">
								
								<!-- Basic Information -->
								<div class="frm_submit_block">	
									<h3>상품을 등록하세요!</h3>
									<div class="frm_submit_wrap">
										<div class="form-row">
										 	<div class="form-group col-md-12">
												<label>제목</label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group col-md-12">
												<label>내용</label>
												<textarea class="form-control h-120"></textarea>
											</div>
											
												
											<div class="form-group col-md-6">
												<label>가격</label>
												<input type="text" class="form-control" placeholder="USD">
											</div>
											
											
											<div class="form-group col-md-6">
												<label>타입</label>
												<select id="status" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">For Rent</option>
													<option value="2">For Sale</option>
												</select>
											</div>
											
											<div class="form-group col-md-6">
												<label>기한</label>
												<input type="text" class="form-control">
											</div>
											
											<!--
											<div class="form-group col-md-6">
												<label>기한</label>
												<select id="ptypes" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">Houses</option>
													<option value="2">Apartment</option>
													<option value="3">Villas</option>
													<option value="4">Commercial</option>
													<option value="5">Offices</option>
													<option value="6">Garage</option>
												</select>
											</div>
											
											  -->
											
											
											
											<div class="form-group col-md-12">
												<label>프레임 워크</label>
												<div class="o-features">
													<ul class="no-ul-list third-row">
													<c:forEach var="vo" items="${langList }">
														<li>
															<input  class="checkbox-custom" name="langchbox" type="checkbox">
															<label  class="checkbox-custom-label">${vo.lang }</label>
														</li>
													</c:forEach>
													</ul>
													
												</div>
											</div>
										
											
										
										
											
											
										</div>
									</div>
								</div>
								
								<!-- Gallery -->
								<div class="frm_submit_block">	
									<h3>IMAGE</h3>
									<div class="frm_submit_wrap">
										<div class="form-row">
										
											<div class="form-group col-md-12">
												<label>사진을 첨부하세요</label>
												<form action="/upload-target" class="dropzone dz-clickable primary-dropzone">
													<div class="dz-default dz-message">
														<i class="ti-gallery"></i>
														<span>원하는 파일을 드래그해주세요</span>
													</div>
												</form>
											</div>
											
										</div>
									</div>
								</div>
								
								
								
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-lg-12 col-md-12">
									<button class="btn btn-theme" type="submit">상품 등록하기</button>
									</div>
								</div>
											
							</div>
						</div>
						
					</div>
				</div>
						
			</section>
			<!-- ============================ Submit Property End ================================== -->
			
			<!-- ============================ Call To Action ================================== -->
			
			<!-- ============================ Call To Action End ================================== -->
			
			<!-- Log In Modal -->
			<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="registermodal" aria-hidden="true">
				<div class="modal-dialog modal-xl login-pop-form" role="document">
					<div class="modal-content overli" id="registermodal">
						<div class="modal-body p-0">
							<div class="resp_log_wrap">
								<div class="resp_log_thumb" style="background:url(assets/img/log.jpg)no-repeat;"></div>
								<div class="resp_log_caption">
									<span class="mod-close" data-dismiss="modal" aria-hidden="true"><i class="ti-close"></i></span>
									<div class="edlio_152">
										<ul class="nav nav-pills tabs_system center" id="pills-tab" role="tablist">
										  <li class="nav-item">
											<a class="nav-link active" id="pills-login-tab" data-toggle="pill" href="#pills-login" role="tab" aria-controls="pills-login" aria-selected="true"><i class="fas fa-sign-in-alt mr-2"></i>Login</a>
										  </li>
										  <li class="nav-item">
											<a class="nav-link" id="pills-signup-tab" data-toggle="pill" href="#pills-signup" role="tab" aria-controls="pills-signup" aria-selected="false"><i class="fas fa-user-plus mr-2"></i>Register</a>
										  </li>
										</ul>
									</div>
									<div class="tab-content" id="pills-tabContent">
										<div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab">
											<div class="login-form">
												<form>
												
													<div class="form-group">
														<label>User Name</label>
														<div class="input-with-icon">
															<input type="text" class="form-control">
															<i class="ti-user"></i>
														</div>
													</div>
													
													<div class="form-group">
														<label>Password</label>
														<div class="input-with-icon">
															<input type="password" class="form-control">
															<i class="ti-unlock"></i>
														</div>
													</div>
													
													<div class="form-group">
														<div class="eltio_ol9">
															<div class="eltio_k1">
																<input id="dd" class="checkbox-custom" name="dd" type="checkbox">
																<label for="dd" class="checkbox-custom-label">Remember Me</label>
															</div>	
															<div class="eltio_k2">
																<a href="#">Lost Your Password?</a>
															</div>	
														</div>
													</div>
													
													<div class="form-group">
														<button type="submit" class="btn btn-md full-width pop-login">Login</button>
													</div>
												
												</form>
											</div>
										</div>
										<div class="tab-pane fade" id="pills-signup" role="tabpanel" aria-labelledby="pills-signup-tab">
											<div class="login-form">
												<form>
												
													<div class="form-group">
														<label>Full Name</label>
														<div class="input-with-icon">
															<input type="text" class="form-control">
															<i class="ti-user"></i>
														</div>
													</div>
													
													<div class="form-group">
														<label>Email ID</label>
														<div class="input-with-icon">
															<input type="email" class="form-control">
															<i class="ti-user"></i>
														</div>
													</div>
													
													<div class="form-group">
														<label>Password</label>
														<div class="input-with-icon">
															<input type="password" class="form-control">
															<i class="ti-unlock"></i>
														</div>
													</div>
													
													<div class="form-group">
														<div class="eltio_ol9">
															<div class="eltio_k1">
																<input id="dd" class="checkbox-custom" name="dd" type="checkbox">
																<label for="dd" class="checkbox-custom-label">By using the website, you accept the terms and conditions</label>
															</div>	
														</div>
													</div>
													
													<div class="form-group">
														<button type="submit" class="btn btn-md full-width pop-login">Register</button>
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
			
			<a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>
			

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
		<script src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/slick.js"></script>
		<script src="${pageContext.request.contextPath}/js/slider-bg.js"></script>
		<script src="${pageContext.request.contextPath}/js/lightbox.js"></script> 
		<script src="${pageContext.request.contextPath}/js/imagesloaded.js"></script>
		<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
		<script src="${pageContext.request.contextPath}/js/custom.js"></script>
		
		<script src="${pageContext.request.contextPath}/js/dropzone.js"></script>
		<!-- ============================================================== -->
		<!-- This page plugins -->
		<!-- ============================================================== -->

	</body>

<%@ include file="../inc/bottom.jsp" %>