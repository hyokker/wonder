<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>



<head>
<meta charset="utf-8" />
<meta name="author" content="Themezhub" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>RentUP - Residence & Real Estate Template</title>
<script type="text/javascript">
	function button1_click() {
		var pdWriteFrm = document.getElementById("pdWriteFrm");
		
		var pdTitle = pdWriteFrm.elements['pdTitle'].value.trim();
		console.log(pdTitle);
		if(pdTitle == '') {
            alert("제목을 입력해주세요.");
            return false;
		}
		
		var isLangChk = false;
        var arr_Lang = pdWriteFrm.elements['langchbox'];
        for(var i=0;i<arr_Lang.length;i++){
            if(arr_Lang[i].checked == true) {
            	isLangChk = true;
                break;
            }
        }
        
        if(!isLangChk){
            alert("개발언어 종류를 한개 이상 선택해주세요.");
            return false;
        }
        
		var isFrameChk = false;
        var arr_Frame = pdWriteFrm.elements['framechbox'];
        for(var i=0;i<arr_Frame.length;i++){
            if(arr_Frame[i].checked == true) {
            	isFrameChk = true;
                break;
            }
        }
        
        if(!isFrameChk){
            alert("프레임 워크 종류를 한개 이상 선택해주세요.");
            return false;
        }

        var tablist = document.getElementById("pill-tab");
        var tabs2 = tablist.querySelectorAll('[role=tab]');
        var delType = tabs2[0].getAttribute('aria-expanded') == null? "TYPR1" : tabs2[0].getAttribute('aria-expanded') === "true"? "TYPE1" : "TYPE2";
        console.log(delType);
        
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "delType");
        hiddenField.setAttribute("value", delType);
        pdWriteFrm.appendChild(hiddenField);
        
        // TODO : 추가로 체크할 입력값 체크로직 추가...
        
        console.log(pdWriteFrm);
		pdWriteFrm.submit();

	};
	
	//	$(function() {
	//		$('#btWrite').click(function() {
	//
	//			location.href = '<c:url value="/pd/pdList"/>';
	//		});
	//
	//	});
</script>
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet">

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
		<div class="page-title"
			style="background: #f4f4f4 url(${pageContext.request.contextPath}/img/pdWriteBd.jpg);"
			data-overlay="5">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12">

						<div class="breadcrumbs-wrap">
							<ol class="breadcrumb">
								<li class="breadcrumb-item active" aria-current="page"></li>
							</ol>
							<h2 class="breadcrumb-title"></h2>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- ============================ Page Title End ================================== -->

		<!-- ============================ Submit Property Start ================================== -->
		<section>


			<div class="container">
				<div class="row">


					<!-- Submit Form -->
					<div class="col-lg-12 col-md-12">

						<div class="submit-page p-0">

							<form id="pdWriteFrm"  name="pdWriteFrm" method="post"
								action="<c:url value='/pd/pdWrite'/>"
								enctype="multipart/form-data">
								<!-- Basic Information -->
								<div class="frm_submit_block">

									<h3>상품을 등록하세요!</h3>

									<div class="frm_submit_wrap">
										<div class="form-row">

											<div class="form-group col-md-12">
												<br> <label>제목</label> <input type="text"
													class="form-control" id="pdTitle" name="pdTitle">
											</div>

											<div class="form-group col-md-12">
												<br> <label>개발 언어</label>
												<div class="o-features">
													<ul class="no-ul-list third-row">
														<c:forEach var="langVo" items="${langList }">
															<li><input id="${langVo.langNo}" name="langchbox"
																class="checkbox-custom" type="checkbox" value="${langVo.lang}"> <label
																for="${langVo.langNo}" class="checkbox-custom-label">${langVo.lang }</label>
															</li>
														</c:forEach>
													</ul>

												</div>
											</div>

											<div class="form-group col-md-12">
												<br> <label>프레임 워크</label>
												<div class="o-features">
													<ul class="no-ul-list third-row">
														<c:forEach var="frameVo" items="${frameList }">
															<li><input id="b-${frameVo.frameNo}" name="framechbox"
																class="checkbox-custom" type="checkbox" value="${frameVo.frame}"> <label
																for="b-${frameVo.frameNo}" class="checkbox-custom-label">${frameVo.frame }</label>
															</li>
														</c:forEach>
													</ul>

												</div>
											</div>



											<div class="col-lg-8 col-md-12 col-sm-12">
												<div class="form-group col-md-12">
													<br> <a href="#" class="tip-topdata"
														data-tip="Property Title"><i class="ti-help"></i></a>
												</div>


												<!-- Single Block Wrap -->
												<div class="property_block_wrap">

													<div class="property_block_wrap_header">
														<ul class="nav nav-pills tabs_system" id="pill-tab"
															role="tablist">
															<li class="nav-item"><a class="nav-link active"
																id="pills-walk-tab" data-toggle="pill"
																href="#pills-walk" role="tab" aria-controls="pills-walk"
																aria-selected="true" >TYPE1</a></li>
															<li class="nav-item"><a class="nav-link"
																id="pills-nearby-tab" data-toggle="pill"
																href="#pills-nearby" role="tab"
																aria-controls="pills-nearby" aria-selected="false">TYPE2</a>
															</li>
														</ul>
													</div>

													<div class="block-body">
														<div class="sidetab-content">
															<div class="tab-content" id="pill-tabContent">
																<!-- Book Now Tab -->
																<div class="tab-pane fade show active" id="pills-walk"
																	role="tabpanel" aria-labelledby="pills-walk-tab">
																	<div class="_walk_score_wrap">

																		<!-- Single Item -->

																		<div class="form-group col-md-6">
																			<label>타입</label> <input type="text"
																				class="form-control" value="STANDARD">
																		</div>

																		<div class="form-group col-md-6">
																			<label>가격</label> <input type="TYPE"
																				class="form-control" placeholder="KRW">
																		</div>

																		<div class="form-group col-md-6">
																			<label>기한</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-6">
																			<label>수정횟수</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-12">
																			<label>상세설명</label>
																			<textarea class="form-control h-120"></textarea>
																		</div>




																		<!-- Single Item -->


																		<!-- Single Item -->



																	</div>
																</div>

																<!-- Appointment Now Tab -->
																<div class="tab-pane fade" id="pills-nearby"
																	role="tabpanel" aria-labelledby="pills-nearby-tab">
																	<!-- Schools -->
																	<div class="nearby-wrap">
																		<!-- Single Item -->
																		<br>
																		<div class="form-group col-md-6">
																			<label>타입</label> <input type="text"
																				class="form-control" value="STANDARD">
																		</div>

																		<div class="form-group col-md-6">
																			<label>가격</label> <input type="TYPE"
																				class="form-control" placeholder="KRW">
																		</div>

																		<div class="form-group col-md-6">
																			<label>기한</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-6">
																			<label>수정횟수</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-12">
																			<label>상세설명</label>
																			<textarea class="form-control h-120"></textarea>
																		</div>
																		<br>
																		<hr>
																		<br>
																		<!-- Single Item -->

																		<div class="form-group col-md-6">
																			<label>타입</label> <input type="text"
																				class="form-control" value="DELUXE">
																		</div>

																		<div class="form-group col-md-6">
																			<label>가격</label> <input type="TYPE"
																				class="form-control" placeholder="KRW">
																		</div>

																		<div class="form-group col-md-6">
																			<label>기한</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-6">
																			<label>수정횟수</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-12">
																			<label>상세설명</label>
																			<textarea class="form-control h-120"></textarea>
																		</div>


																		<br>
																		<hr>
																		<br>
																		<!-- Single Item -->

																		<div class="form-group col-md-6">
																			<label>타입</label> <input type="text"
																				class="form-control" value="PREMIUM">
																		</div>

																		<div class="form-group col-md-6">
																			<label>가격</label> <input type="TYPE"
																				class="form-control" placeholder="KRW">
																		</div>

																		<div class="form-group col-md-6">
																			<label>기한</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-6">
																			<label>수정횟수</label> <input type="text"
																				class="form-control">
																		</div>

																		<div class="form-group col-md-12">
																			<label>상세설명</label>
																			<textarea class="form-control h-120"></textarea>
																		</div>





																	</div>



																</div>
															</div>

														</div>

													</div>
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
												<div class="dropzone dz-clickable primary-dropzone">
													<div class="dz-default dz-message">
														<i class="ti-gallery"></i> <span>원하는 파일을 드래그해주세요</span>
													</div>
												</div>
											</div>

											<div class="form-group col-md-12">
												<label>사진을 첨부하세요</label>
												<form action="/upload-target"
													class="dropzone dz-clickable primary-dropzone">
													<div class="dz-default dz-message">
														<i class="ti-gallery"></i> <span>원하는 파일을 드래그해주세요</span>
													</div>
												</form>
											</div>



										</div>


									</div>
								</div>


							</form>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-12 col-md-12">
						<button id="pd_reg" class="btn btn-theme" type="submit" onclick="button1_click();">상품
							등록하기</button>
					</div>
				</div>

			</div>
	</div>

	</div>
	</div>
	</form>
	</section>
	<!-- ============================ Submit Property End ================================== -->

	<!-- ============================ Call To Action ================================== -->

	<!-- ============================ Call To Action End ================================== -->

	<!-- Log In Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="registermodal" aria-hidden="true">
		<div class="modal-dialog modal-xl login-pop-form" role="document">
			<div class="modal-content overli" id="registermodal">
				<div class="modal-body p-0">
					<div class="resp_log_wrap">
						<div class="resp_log_thumb"
							style="background: url(assets/img/log.jpg) no-repeat;"></div>
						<div class="resp_log_caption">
							<span class="mod-close" data-dismiss="modal" aria-hidden="true"><i
								class="ti-close"></i></span>
							<div class="edlio_152">
								<ul class="nav nav-pills tabs_system center" id="pills-tab"
									role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="pills-login-tab" data-toggle="pill" href="#pills-login"
										role="tab" aria-controls="pills-login" aria-selected="true"><i
											class="fas fa-sign-in-alt mr-2"></i>Login</a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-signup-tab" data-toggle="pill" href="#pills-signup"
										role="tab" aria-controls="pills-signup" aria-selected="false"><i
											class="fas fa-user-plus mr-2"></i>Register</a></li>
								</ul>
							</div>
							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-login"
									role="tabpanel" aria-labelledby="pills-login-tab">
									<div class="login-form">
										<form>

											<div class="form-group">
												<label>User Name</label>
												<div class="input-with-icon">
													<input type="text" class="form-control"> <i
														class="ti-user"></i>
												</div>
											</div>

											<div class="form-group">
												<label>Password</label>
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
															class="checkbox-custom-label">Remember Me</label>
													</div>
													<div class="eltio_k2">
														<a href="#">Lost Your Password?</a>
													</div>
												</div>
											</div>

											<div class="form-group">
												<button type="submit"
													class="btn btn-md full-width pop-login">Login</button>
											</div>

										</form>
									</div>
								</div>
								<div class="tab-pane fade" id="pills-signup" role="tabpanel"
									aria-labelledby="pills-signup-tab">
									<div class="login-form">
										<form>

											<div class="form-group">
												<label>Full Name</label>
												<div class="input-with-icon">
													<input type="text" class="form-control"> <i
														class="ti-user"></i>
												</div>
											</div>

											<div class="form-group">
												<label>Email ID</label>
												<div class="input-with-icon">
													<input type="email" class="form-control"> <i
														class="ti-user"></i>
												</div>
											</div>

											<div class="form-group">
												<label>Password</label>
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
															class="checkbox-custom-label">By using the
															website, you accept the terms and conditions</label>
													</div>
												</div>
											</div>

											<div class="form-group">
												<button type="submit"
													class="btn btn-md full-width pop-login" id="btWrite">Register</button>
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
	<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/slick.js"></script>
	<script src="${pageContext.request.contextPath}/js/slider-bg.js"></script>
	<script src="${pageContext.request.contextPath}/js/lightbox.js"></script>
	<script src="${pageContext.request.contextPath}/js/imagesloaded.js"></script>
	<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>

	<script src="${pageContext.request.contextPath}/js/dropzone.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>

	<!--  -->
	<!-- ============================================================== -->
	<!-- This page plugins -->
	<!-- ============================================================== -->

	<!-- New Js -->

	<!--  -->
	<!-- Date Booking Script -->
	<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
	<!-- ============================================================== -->
	<!-- This page plugins -->
	<!-- ============================================================== -->

</body>

<%@ include file="../inc/bottom.jsp"%>