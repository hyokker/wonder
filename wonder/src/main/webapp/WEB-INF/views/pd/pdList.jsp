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
	
			
			<!-- ============================ All Property ================================== -->
			<section class="gray pt-4">
				<div class="container">
					<div class="row">
					
						<!-- 검색 바 -->
						<div class="col-lg-4 col-md-12 col-sm-12">
							<div class="page-sidebar p-0">
								<div class="collapse" id="fltbox">
									<!-- Find New Property -->
									<div class="sidebar-widgets p-4">
									
										<!-- 제목 -->
										<div class="form-group">
											<div class="input-with-icon">
												<input type="text" class="form-control" placeholder="제목을 입력하세요"
													name="pdTitle">
													<i class="ti-search"></i>
											</div>
										</div>
										
										<!-- 수정횟수 -->
										<div class="form-group">
											<div class="simple-input">
												<select id="editCount" class="form-control"
												name="editCount">
													<option value="">수정횟수</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
												</select>
											</div>
										</div>
									
										
										<!-- 기한 -->
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<div class="simple-input">
														<input type="text" class="form-control" placeholder="최소 기한 (일)"
															name="pdTermMin">
													</div>
												</div>
											</div>
											
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<div class="simple-input">
														<input type="text" class="form-control" placeholder="최대 기한 (일)"
															name="pdTermMax">
													</div>
												</div>
											</div>
										</div>
										
										<!-- 가격 -->
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 pt-4 pb-4">
												<h6>Choose Price</h6>
												<div class="rg-slider">
													 <input type="text" class="js-range-slider" name="my_range" value="" 
													 	name="pdPrice"/>
												</div>
											</div>
										</div>									
										
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 pt-4">
												<h6>개발 언어</h6>
												 <div class="classlanguage">
                                       <ul class="no-ul-list third-row">
                                          <c:forEach var="langVo" items="${langList}">
                                             <li><input id="${langVo.langNo}" name="langchbox"
                                                class="checkbox-custom" type="checkbox" value="${langVo.lang}"> <label
                                                for="${langVo.langNo}" class="checkbox-custom-label">${langVo.lang }</label>
                                             </li>
                                          </c:forEach>
                                       		</ul>

                                    </div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 pt-4">
												<button class="btn theme-bg rounded full-width"
													id="searchPd">상품 검색</button>
											</div>
										</div>
									
									</div>
								</div>
							</div>
							<!-- Sidebar End -->						
						</div>
						
						<div class="col-lg-8 col-md-12 col-sm-12">
							<div class="row justify-content-center">
						
								<!-- Single Property -->
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Sale</div>
											<div class="list-img-slide">
												<div class="click">
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
												</div>
											</div>
										</div>
										
										<div class="list_view_flex">
										
											<div class="listing-detail-wrapper mt-1">
												<div class="listing-short-detail-wrap">
													<div class="_card_list_flex mb-2">
														<div class="_card_flex_01">
															<span class="_list_blickes _netork" id="pdTerm">.</span>
															<span class="_list_blickes types" id="editCount">.</span>
															
														</div>
														<div class="_card_flex_last">
														<div class="prt_saveed_12lk">
															<label class="toggler toggler-danger"><input type="checkbox" id="pdDibs"><i class="fas fa-heart"></i></label>
														</div>
													</div>
													
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail" id="pdTitle">8512 Red Reveals Market, Montreal Canada, SHQT45O</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"></div>lang,framework
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"></div>lang,framework
													</div>
													
												</div>
											</div>
												<div class="listing-detail-footer">
											<div class="footer-first">
												<div class="foot-location">
															<h6 class="listing-card-info-price mb-0" id="pdPrice">8,700</h6>/standard</div>
											</div>
											<div class="footer-flex">
													<a href="property-detail.html" class="prt-view">View Detail</a>
												</div>
										</div>
										</div>
										
									</div>
								</div>
								<!-- End Single Property -->
								 
								<!-- Single Property -->
								<!--  
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Sale</div>
											<div class="list-img-slide">
												<div class="click">
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
												</div>
											</div>
										</div>
										
										<div class="list_view_flex">
										
											<div class="listing-detail-wrapper mt-1">
												<div class="listing-short-detail-wrap">
													<div class="_card_list_flex mb-2">
														<div class="_card_flex_01">
															<span class="_list_blickes _netork">8 Network</span>
															<span class="_list_blickes types">Apartment</span>
															
														</div>
														<div class="_card_flex_last">
														<div class="prt_saveed_12lk">
															<label class="toggler toggler-danger"><input type="checkbox"><i class="fas fa-heart"></i></label>
														</div>
													</div>
													
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">8512 Red Reveals Market, Montreal Canada, SHQT45O</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>5 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>2 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>900 sqft
													</div>
												</div>
											</div>
												<div class="listing-detail-footer">
											<div class="footer-first">
												<div class="foot-location">
															<h6 class="listing-card-info-price mb-0">$8,700</h6>/sqft</div>
											</div>
											<div class="footer-flex">
													<a href="property-detail.html" class="prt-view">View Detail</a>
												</div>
										</div>
										</div>
										
									</div>
								</div>
								-->
								<!-- End Single Property -->
								
								
								
								
								<!-- Single Property -->
								<!--  
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Sale</div>
											<div class="list-img-slide">
												<div class="click">
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
												</div>
											</div>
										</div>
										
										<div class="list_view_flex">
										
											<div class="listing-detail-wrapper mt-1">
												<div class="listing-short-detail-wrap">
													<div class="_card_list_flex mb-2">
														<div class="_card_flex_01">
															<span class="_list_blickes _netork">8 Network</span>
															<span class="_list_blickes types">Apartment</span>
															
														</div>
														<div class="_card_flex_last">
														<div class="prt_saveed_12lk">
															<label class="toggler toggler-danger"><input type="checkbox"><i class="fas fa-heart"></i></label>
														</div>
													</div>
													
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">8512 Red Reveals Market, Montreal Canada, SHQT45O</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>5 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>2 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>900 sqft
													</div>
												</div>
											</div>
												<div class="listing-detail-footer">
											<div class="footer-first">
												<div class="foot-location">
															<h6 class="listing-card-info-price mb-0">$8,700</h6>/sqft</div>
											</div>
											<div class="footer-flex">
													<a href="property-detail.html" class="prt-view">View Detail</a>
												</div>
										</div>
										</div>
										
									</div>
								</div>
								-->
								<!-- End Single Property -->
								<!-- Single Property -->
								<!--  
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Sale</div>
											<div class="list-img-slide">
												<div class="click">
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
													<div><a href="single-property-1.html"><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></a></div>
												</div>
											</div>
										</div>
										
										<div class="list_view_flex">
										
											<div class="listing-detail-wrapper mt-1">
												<div class="listing-short-detail-wrap">
													<div class="_card_list_flex mb-2">
														<div class="_card_flex_01">
															<span class="_list_blickes _netork">8 Network</span>
															<span class="_list_blickes types">Apartment</span>
															
														</div>
														<div class="_card_flex_last">
														<div class="prt_saveed_12lk">
															<label class="toggler toggler-danger"><input type="checkbox"><i class="fas fa-heart"></i></label>
														</div>
													</div>
													
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">8512 Red Reveals Market, Montreal Canada, SHQT45O</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>5 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>2 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>900 sqft
													</div>
												</div>
											</div>
												<div class="listing-detail-footer">
											<div class="footer-first">
												<div class="foot-location">
															<h6 class="listing-card-info-price mb-0">$8,700</h6>/sqft</div>
											</div>
											<div class="footer-flex">
													<a href="property-detail.html" class="prt-view">View Detail</a>
												</div>
										</div>
										</div>
										
									</div>
								</div>
								-->
								<!-- End Single Property -->
								
							</div>
						</div>
						
						
					</div>
				</div>	
			</section>
			<!-- ============================ All Property ================================== -->
			
			<!-- ============================ Call To Action ================================== -->
			
			<!-- ============================ Call To Action End ================================== -->
			
			<!-- ============================ Footer Start ================================== -->
		
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
		
		<!-- ============================================================== -->
		<!-- This page plugins -->
		<!-- ============================================================== -->
		

	</body>
<%@ include file="../inc/bottom.jsp" %>