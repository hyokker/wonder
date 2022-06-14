<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../inc/top.jsp" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="author" content="Themezhub" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
        <title>작업물 중개는 원더(WONDER)</title>
		 
        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
        
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
            <!-- Top header  -->
            <!-- ============================================================== -->
            <!-- Start Navigation -->
			<div class="header header-light">
				<div class="container">
					<nav id="navigation" class="navigation navigation-landscape">
						<div class="nav-header">
							<a class="nav-brand" href="<c:url value='/'/>">
								<img src="${pageContext.request.contextPath}/img/logo.png" class="logo" alt="" />
							</a>
							<div class="nav-toggle"></div>
							<div class="mobile_nav">
								<ul>
									<li class="_my_prt_list"><a href="#"><span>2</span>My List</a></li>
									<li><a href="#" data-toggle="modal" data-target="#login"><i class="fas fa-user-circle fa-lg"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="nav-menus-wrapper" style="transition-property: none;">
							<ul class="nav-menu">
							
								<li class="active"><a href="<c:url value='/aboutUs/aboutUs'/>">WONDER?<span class="submenu-indicator"></span></a>
									<ul class="nav-dropdown nav-submenu">
										<li><a href="index.html">서비스 소개</a></li>
									<!-- <li><a href="home-2.html">Home 2</a></li>
										<li><a href="home-3.html">Home 3</a></li>
										<li><a href="home-4.html">Home 4</a></li>
										<li><a href="home-5.html">Home 5</a></li>
										<li><a href="home-6.html">Home 6</a></li>
										<li><a href="home-7.html">Home 7</a></li>
										<li><a href="map.html">Map Home</a></li> -->
									</ul>
								</li>
								
								<li><a href="#">상품 목록<span class="submenu-indicator"></span></a>
									<ul class="nav-dropdown nav-submenu">
										<li><a href="#">언어별 상품 목록<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="grid-layout-with-sidebar.html">JAVA</a></li>
												<li><a href="grid-layout-2.html">ORACLE</a></li>
												<li><a href="grid-layout-3.html">SPRING</a></li>
											</ul>
										</li>
										<li><a href="#">가격별 상품 목록<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="list-layout-with-sidebar.html">BRONZE</a></li>
												<li><a href="list-layout-with-map-2.html">SILVER</a></li>
												<li><a href="list-layout-with-map-2.html">GOLD</a></li>
											</ul>
										</li>
										<li><a href="#">Listing Map<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="half-map.html">Half Map</a></li>
												<li><a href="half-map-2.html">Half Map 2</a></li>
												<li><a href="classical-layout-with-map.html">Classical With Sidebar</a></li>
												<li><a href="list-layout-with-map.html">List Sidebar Map</a></li>
												<li><a href="grid-layout-with-map.html">Grid Sidebar Map</a></li>
											</ul>
										</li>
										<li><a href="#">Agents View<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="agents.html">Agent Grid Style</a></li>
												<li><a href="agents-2.html">Agent Grid 2</a></li>
												<li><a href="agent-page.html">Agent Detail Page</a></li>
											</ul>
										</li>
										<li><a href="#">Agency View<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="agencies.html">Agency Grid Style</a></li>
												<li><a href="agency-page.html">Agency Detail Page</a></li>
											</ul>
										</li>
									</ul>
								</li>
								
								<li><a href="#">자유게시판<span class="submenu-indicator"></span></a>
									<ul class="nav-dropdown nav-submenu">
										<li class=""><a href="#">User Admin<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="dashboard.html">User Dashboard</a></li>
												<li><a href="my-profile.html">My Profile</a></li>
												<li><a href="my-property.html">My Property</a></li>
												<li><a href="messages.html">Messages</a></li>
												<li><a href="bookmark-list.html">Bookmark Property</a></li>
												<li><a href="submit-property.html">Submit Property</a></li>
											</ul>
										</li>
										<li><a href="#">Single Property<span class="submenu-indicator"></span></a>
											<ul class="nav-dropdown nav-submenu">
												<li><a href="single-property-1.html">Single Property 1</a></li>
												<li><a href="single-property-2.html">Single Property 2</a></li>
												<li><a href="single-property-3.html">Single Property 3</a></li>
												<li><a href="single-property-4.html">Single Property 4</a></li>
											</ul>
										</li>
										<li><a href="compare-property.html">Compare Property</a></li>
									</ul>
								</li>
								
								<li><a href="#">Q&A게시판<span class="submenu-indicator"></span></a>
							<ul class="nav-dropdown nav-submenu">
										<li><a href="blog.html">Blog Style</a></li>
										<li><a href="about-us.html">About Us</a></li>
										<li><a href="pricing.html">Pricing</a></li>
										<li><a href="404.html">404 Page</a></li>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="contact.html">Contact</a></li>
										<li><a href="component.html">Elements</a></li>
										<li><a href="privacy.html">Privacy Policy</a></li>
										<li><a href="faq.html">FAQs</a></li>
									</ul>
								</li>
								
							</ul>
							
							<ul class="nav-menu nav-menu-social align-to-right">
								
								<li>
									<a href="#" class="alio_green" data-toggle="modal" data-target="#login">
										<i class="fas fa-sign-in-alt mr-1"></i><span class="dn-lg">로그인 하세요</span>
									</a>
								</li>
								<li class="add-listing">
									<a href="submit-property.html"  class="theme-cl">
										 <i class="fas fa-plus-circle mr-1"></i>상품 등록
									</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		<!-- End Navigation -->
		<div class="clearfix"></div> --%>
		<!-- ============================================================== -->
		<!-- Top header  -->
		<!-- ============================================================== -->

		<!-- ============================ Hero Banner  Start================================== -->
		<div class="home-slider margin-bottom-0">

			<!-- Slide -->
			<div data-background-image="<c:url value='/img/main.jpg'/>" class="item">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="home-slider-container">

								<!-- Slide Title -->
								<div class="home-slider-desc">
									<div class="home-slider-title">
										<h5 class="offers_tags">작업물 의뢰를 원하시나요?</h5>
										<h3>
											원더에서 의뢰하세요!<br>
											<span class="trans_text">WONDER</span>
										</h3>
									</div>

									<a href="<c:url value='/aboutUs/aboutUs'/>" class="read-more theme-bg">
									원더가 뭐에요?<i class="fa fa-arrow-right ml-2"></i>
									</a>
								</div>
								<!-- Slide Title / End -->

							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!-- ============================ Hero Banner End ================================== -->

		<!-- ============================ Hero Search Start ================================== -->
		<section class="p-0 top_overlio">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-11 col-lg-11 col-md-12">
						<div
							class="full_search_box nexio_search lightanic_search hero_search-radius modern">
							<div class="search_hero_wrapping">

								<div class="row">
									<div class="col-lg-4 col-md-3 col-sm-12">
										<div class="form-group">
											<label>개발 언어</label>
											<div class="input-with-icon">
												<select id="location" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">Java</option>
													<option value="2">Python</option>
													<option value="3">Spring</option>
													<!-- <option value="4">New Orleans</option>
													<option value="5">Washington</option>
													<option value="6">Charleston</option> -->
												</select>
											</div>
										</div>
									</div>

									<div class="col-lg-3 col-md-3 col-sm-12">
										<div class="form-group">
											<label>전문가 경력</label>
											<div class="input-with-icon">
												<select id="ptypes" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">5년 이내</option>
													<option value="2">10년 이내</option>
													<option value="3">10년 이상</option>
													<!-- <option value="4">Commercial</option>
													<option value="5">Offices</option>
													<option value="6">Garage</option> -->
												</select>
											</div>
										</div>
									</div>

									<div class="col-lg-4 col-md-4 col-sm-12">
										<div class="form-group none">
											<label>상품 종류</label>
											<div class="input-with-icon">
												<select id="price" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">STANDARD</option>
													<option value="2">DELUXE</option>
													<option value="3">PRMIUM</option>
													<!-- <option value="3">From 80,000 To 40m</option>
													<option value="3">From 90,000 To 50m</option> -->
												</select>
											</div>
										</div>
									</div>

									<div class="col-lg-1 col-md-2 col-sm-12 small-padd m_space">
										<div class="form-group none">
											<a href="#" class="btn search-btn"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- ============================ Hero Search End ================================== -->

		<!-- ============================ How It Works Start ================================== -->
		<section class="min">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-lg-6 col-md-6">
						<div class="sec-heading center">
							<h2>의뢰는 어떻게 하나요?</h2>
							<p>처음오신 여러분은 원더에 회원가입 하세요!
							그리고 저희가 제공하는 양식에 맞게 의뢰서를 작성해보세요! 원더에 등록된 전문가들이 연락 드릴거예요!</p>
						</div>
					</div>
				</div>

				<div class="row justify-content-center">

					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="wpk_process">
							<div class="wpk_thumb">
								<div class="wpk_thumb_figure">
									<img src="assets/img/account-cl.svg" class="img-fluid" alt="" />
								</div>
							</div>
							<div class="wpk_caption">
								<h4>1.먼저 가입하세요!</h4>
								<p>우리 원더에서는 간편하게 회원가입 할 수 있어요</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="wpk_process active">
							<div class="wpk_thumb">
								<div class="wpk_thumb_figure">
									<img src="assets/img/search.svg" class="img-fluid" alt="" />
								</div>
							</div>
							<div class="wpk_caption">
								<h4>전문가 검색 & 의뢰서 작성</h4>
								<p>전문가를 검색해서 직접 의뢰하거나, 의뢰서를 작성해서
								전문가들이 의뢰서를 보고 요청해요.</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-12">
						<div class="wpk_process">
							<div class="wpk_thumb">
								<div class="wpk_thumb_figure">
									<img src="assets/img/booking-cl.svg" class="img-fluid" alt="" />
								</div>
							</div>
							<div class="wpk_caption">
								<h4>작업물 확인</h4>
								<p>매칭된 전문가와 회의 및 조율을 통해서 요청하신 작업물을 확인하고, 대금을 지불해요.</p>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<div class="clearfix"></div>
		<!-- ============================ How It Works End ================================== -->

		<!-- ============================ Featured Properties Start ================================== -->
		<section class="min light-bg">
			<div class="container">


				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-8">
						<div class="sec-heading center">
							<h2>Listed Featured Property</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam.</p>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="list_views">

							<!-- Single Item -->
							<div class="single_items">
								<div class="row">
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">5 Network</span> <span
																	class="_list_blickes types">Family</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$7,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">7298 Rani Market Near
																		Saaket, Henever Canada, QWUI98</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															800 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.4</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">7 Network</span> <span
																	class="_list_blickes types">Condos</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$10,400</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">8512 Red Reveals Market,
																		Montreal Canada, SHQT45O</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															900 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.7</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">8 Network</span> <span
																	class="_list_blickes types">Office</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$9,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">9632 New Green Garden,
																		Huwai Denever USA, AWE789O</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															5 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															1000 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.2</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">7 Network</span> <span
																	class="_list_blickes types">Villas</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$8,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">5689 Resot Relly Market,
																		Montreal Canada, HAQC445</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															950 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.8</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>

							<!-- Single Item -->
							<div class="single_items">
								<div class="row">
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">6 Network</span> <span
																	class="_list_blickes types">Condos</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$8,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">7012 Shine Sehu Street,
																		Liverpool London, LC345AC</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															850 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.3</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">4 Network</span> <span
																	class="_list_blickes types">Office</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$10,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">425 Vine 012 Street,
																		Montreal Canada, UHW45Q</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															5 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															900 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.6</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">10 Network</span> <span
																	class="_list_blickes types">Building</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$8,400</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">1244 Vansh Market, Mise
																		Mizkel Australia, AU456HA</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															1000 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.4</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">3 Network</span> <span
																	class="_list_blickes types">Studio</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$9,990</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">7264 Green Glelcer Street,
																		Barghimbar USA, ERIO098</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															800 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.9</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>

							<!-- Single Item -->
							<div class="single_items">
								<div class="row">
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">4 Network</span> <span
																	class="_list_blickes types">Villas</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$10,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">425 Vine 012 Street,
																		Montreal Canada, UHW45Q</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															5 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															900 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.3</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">7 Network</span> <span
																	class="_list_blickes types">Family</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$8,600</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">7298 Rani Market Near
																		Saaket, Henever Canada, QWUI98</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															900 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.2</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">6 Network</span> <span
																	class="_list_blickes types">Villas</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$8,500</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">8512 Red Reveals Market,
																		Montreal Canada, SHQT45O</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															900 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.7</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">6 Network</span> <span
																	class="_list_blickes types">Family</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$7,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">9632 New Green Garden,
																		Huwai Denever USA, AWE789O</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															3 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															1 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															800 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.2</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>

							<!-- Single Item -->
							<div class="single_items">
								<div class="row">
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">10 Network</span> <span
																	class="_list_blickes types">Apartment</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$10,200</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">5689 Resot Relly Market,
																		Montreal Canada, HAQC445</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															950 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.7</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">12 Network</span> <span
																	class="_list_blickes types">Condos</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$10,500</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">7012 Shine Sehu Street,
																		Liverpool London, LC345AC</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															1 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															950 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.7</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Sale</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">6 Network</span> <span
																	class="_list_blickes types">Family</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$7,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">425 Vine 012 Street,
																		Montreal Canada, UHW45Q</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															3 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															1 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															800 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate good">4.7</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- Single Property -->
									<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
										<div class="property-listing list_view">

											<div class="listing-img-wrapper">
												<div class="_exlio_125">For Rent</div>
												<div class="list-img-slide">
													<a href="single-property-1.html"><img
														src="https://via.placeholder.com/800x500"
														class="img-fluid mx-auto" alt="" /></a>
												</div>
											</div>

											<div class="list_view_flex">

												<div class="listing-detail-wrapper mt-1">
													<div class="listing-short-detail-wrap">
														<div class="_card_list_flex mb-2">
															<div class="_card_flex_01">
																<span class="_list_blickes _netork">8 Network</span> <span
																	class="_list_blickes types">Office</span>
															</div>
															<div class="_card_flex_last">
																<h6 class="listing-card-info-price mb-0">$9,000</h6>
															</div>
														</div>
														<div class="_card_list_flex">
															<div class="_card_flex_01">
																<h4 class="listing-name verified">
																	<a href="single-property-1.html"
																		class="prt-link-detail">1244 Vansh Market, Mise
																		Mizkel Australia, AU456HA</a>
																</h4>
															</div>
														</div>
													</div>
												</div>

												<div class="price-features-wrapper">
													<div class="list-fx-features">
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bed.svg" width="13" alt="" />
															</div>
															4 Beds
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/bathtub.svg" width="13" alt="" />
															</div>
															2 Bath
														</div>
														<div class="listing-card-info-icon">
															<div class="inc-fleat-icon">
																<img src="assets/img/move.svg" width="13" alt="" />
															</div>
															960 sqft
														</div>
													</div>
												</div>

												<div class="listing-detail-footer">
													<div class="footer-first">
														<div class="foot-rates">
															<span class="elio_rate perfect">4.8</span>
															<div class="_rate_stio">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
															</div>
														</div>
													</div>
													<div class="footer-flex">
														<a href="property-detail.html" class="prt-view">View
															Detail</a>
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
		</section>
		<!-- ============================ Featured Properties End ================================== -->

		<!-- ============================ Property By Location ================================== -->
		<section class="min">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-8">
						<div class="sec-heading center">
							<h2>Top Property Places</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam.</p>
						</div>
					</div>
				</div>

				<div class="row justify-content-center">
					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="grid-layout-with-sidebar.html" class="img-wrap">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>California, USA</h4>
									<span>48 Properties</span>
								</div>
								<div class="location_btn">
									<i class="fa fa-arrow-right"></i>
								</div>
							</div>
							<div class="img-wrap-background"
								style="background-image: url(https://via.placeholder.com/1200x740);"></div>
						</a>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="grid-layout-with-sidebar.html" class="img-wrap">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Barbingham, USA</h4>
									<span>73 Properties</span>
								</div>
								<div class="location_btn">
									<i class="fa fa-arrow-right"></i>
								</div>
							</div>
							<div class="img-wrap-background"
								style="background-image: url(https://via.placeholder.com/1200x740);"></div>
						</a>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-6">
						<a href="grid-layout-with-sidebar.html" class="img-wrap">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Denever, USA</h4>
									<span>40 Properties</span>
								</div>
								<div class="location_btn">
									<i class="fa fa-arrow-right"></i>
								</div>
							</div>
							<div class="img-wrap-background"
								style="background-image: url(https://via.placeholder.com/1200x740);"></div>
						</a>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6">
						<a href="grid-layout-with-sidebar.html" class="img-wrap">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Liverpool, London</h4>
									<span>35 Properties</span>
								</div>
								<div class="location_btn">
									<i class="fa fa-arrow-right"></i>
								</div>
							</div>
							<div class="img-wrap-background"
								style="background-image: url(https://via.placeholder.com/1200x740);"></div>
						</a>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6">
						<a href="grid-layout-with-sidebar.html" class="img-wrap">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>New Orleans, Louisiana</h4>
									<span>10 Properties</span>
								</div>
								<div class="location_btn">
									<i class="fa fa-arrow-right"></i>
								</div>
							</div>
							<div class="img-wrap-background"
								style="background-image: url(https://via.placeholder.com/1200x740);"></div>
						</a>
					</div>

				</div>

			</div>
		</section>
		<!-- ============================ Property By Location End ================================== -->

		<!-- ============================ Smart Testimonials ================================== -->
		<section class="image-cover"
			style="background: #122947 url(assets/img/pattern.png) no-repeat;">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-8">
						<div class="sec-heading center light">
							<h2>Good Reviews By Clients</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam.</p>
						</div>
					</div>
				</div>

				<div class="row justify-content-center">
					<div class="col-lg-8 col-md-8">
						<div class="modern-testimonial">

							<!-- Single Items -->
							<div class="single_items">
								<div class="_smart_testimons">
									<div class="_smart_testimons_thumb">
										<img src="https://via.placeholder.com/500x500"
											class="img-fluid" alt=""> <span class="tes_quote"><i
											class="fa fa-quote-left"></i></span>
									</div>
									<div class="facts-detail">
										<p>Faucibus tristique felis potenti ultrices ornare
											rhoncus semper hac facilisi Rutrum tellus lorem sem velit
											nisi non pharetra in dui.</p>
									</div>
									<div class="_smart_testimons_info">
										<h5>Lily Warliags</h5>
										<div class="_ovr_posts">
											<span>CEO, Leader</span>
										</div>
									</div>
								</div>
							</div>

							<!-- Single Items -->
							<div class="single_items">
								<div class="_smart_testimons">
									<div class="_smart_testimons_thumb">
										<img src="https://via.placeholder.com/500x500"
											class="img-fluid" alt=""> <span class="tes_quote"><i
											class="fa fa-quote-left"></i></span>
									</div>
									<div class="facts-detail">
										<p>Faucibus tristique felis potenti ultrices ornare
											rhoncus semper hac facilisi Rutrum tellus lorem sem velit
											nisi non pharetra in dui.</p>
									</div>
									<div class="_smart_testimons_info">
										<h5>Carol B. Halton</h5>
										<div class="_ovr_posts">
											<span>CEO, Leader</span>
										</div>
									</div>
								</div>
							</div>

							<!-- Single Items -->
							<div class="single_items">
								<div class="_smart_testimons">
									<div class="_smart_testimons_thumb">
										<img src="https://via.placeholder.com/500x500"
											class="img-fluid" alt=""> <span class="tes_quote"><i
											class="fa fa-quote-left"></i></span>
									</div>
									<div class="facts-detail">
										<p>Faucibus tristique felis potenti ultrices ornare
											rhoncus semper hac facilisi Rutrum tellus lorem sem velit
											nisi non pharetra in dui.</p>
									</div>
									<div class="_smart_testimons_info">
										<h5>Jesse L. Westberg</h5>
										<div class="_ovr_posts">
											<span>CEO, Leader</span>
										</div>
									</div>
								</div>
							</div>

							<!-- Single Items -->
							<div class="single_items">
								<div class="_smart_testimons">
									<div class="_smart_testimons_thumb">
										<img src="https://via.placeholder.com/500x500"
											class="img-fluid" alt=""> <span class="tes_quote"><i
											class="fa fa-quote-left"></i></span>
									</div>
									<div class="facts-detail">
										<p>Faucibus tristique felis potenti ultrices ornare
											rhoncus semper hac facilisi Rutrum tellus lorem sem velit
											nisi non pharetra in dui.</p>
									</div>
									<div class="_smart_testimons_info">
										<h5>Elmer N. Rodriguez</h5>
										<div class="_ovr_posts">
											<span>CEO, Leader</span>
										</div>
									</div>
								</div>
							</div>

							<!-- Single Items -->
							<div class="single_items">
								<div class="_smart_testimons">
									<div class="_smart_testimons_thumb">
										<img src="https://via.placeholder.com/500x500"
											class="img-fluid" alt=""> <span class="tes_quote"><i
											class="fa fa-quote-left"></i></span>
									</div>
									<div class="facts-detail">
										<p>Faucibus tristique felis potenti ultrices ornare
											rhoncus semper hac facilisi Rutrum tellus lorem sem velit
											nisi non pharetra in dui.</p>
									</div>
									<div class="_smart_testimons_info">
										<h5>Heather R. Sirianni</h5>
										<div class="_ovr_posts">
											<span>CEO, Leader</span>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</section>
		<!-- ============================ Smart Testimonials End ================================== -->

		<!-- ============================ Price Table Start ================================== -->
		<section class="min">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-10 text-center">
						<div class="sec-heading center">
							<h2>Select your Package</h2>
							<p>At vero eos et accusamus et iusto odio dignissimos ducimus
								qui blanditiis praesentium voluptatum deleniti atque corrupti
								quos dolores</p>
						</div>
					</div>
				</div>

				<div class="row align-items-center">

					<!-- Single Package -->
					<div class="col-lg-4 col-md-4">
						<div class="pricing_wrap">
							<div class="prt_head">
								<h4>Basic</h4>
							</div>
							<div class="prt_price">
								<h2>
									<span>$</span>29
								</h2>
								<span>per user, per month</span>
							</div>
							<div class="prt_body">
								<ul>
									<li>99.5% Uptime Guarantee</li>
									<li>120GB CDN Bandwidth</li>
									<li>5GB Cloud Storage</li>
									<li class="none">Personal Help Support</li>
									<li class="none">Enterprise SLA</li>
								</ul>
							</div>
							<div class="prt_footer">
								<a href="#" class="btn choose_package">Start Basic</a>
							</div>
						</div>
					</div>

					<!-- Single Package -->
					<div class="col-lg-4 col-md-4">
						<div class="pricing_wrap">
							<div class="prt_head">
								<div class="recommended">Best Value</div>
								<h4>Standard</h4>
							</div>
							<div class="prt_price">
								<h2>
									<span>$</span>49
								</h2>
								<span>per user, per month</span>
							</div>
							<div class="prt_body">
								<ul>
									<li>99.5% Uptime Guarantee</li>
									<li>150GB CDN Bandwidth</li>
									<li>10GB Cloud Storage</li>
									<li>Personal Help Support</li>
									<li class="none">Enterprise SLA</li>
								</ul>
							</div>
							<div class="prt_footer">
								<a href="#" class="btn choose_package active">Start Standard</a>
							</div>
						</div>
					</div>

					<!-- Single Package -->
					<div class="col-lg-4 col-md-4">
						<div class="pricing_wrap">
							<div class="prt_head">
								<h4>Platinum</h4>
							</div>
							<div class="prt_price">
								<h2>
									<span>$</span>79
								</h2>
								<span>2 user, per month</span>
							</div>
							<div class="prt_body">
								<ul>
									<li>100% Uptime Guarantee</li>
									<li>200GB CDN Bandwidth</li>
									<li>20GB Cloud Storage</li>
									<li>Personal Help Support</li>
									<li>Enterprise SLA</li>
								</ul>
							</div>
							<div class="prt_footer">
								<a href="#" class="btn choose_package">Start Platinum</a>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- ============================ Price Table End ================================== -->

<%-- 	<!-- ============================ Call To Action ================================== -->
		<section class="theme-bg call_action_wrap-wrap">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						
						<div class="call_action_wrap">
							<div class="call_action_wrap-head">
								<h3>원더의 프리랜서가 당신의 연락을 기다립니다</h3>
							</div>
							<a href="#" class="btn btn-call_action_wrap">문의하기</a>
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
														class="btn btn-md full-width pop-login">Register</button>
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

		<!-- Send Message -->
		<div class="modal fade" id="autho-message" tabindex="-1" role="dialog"
			aria-labelledby="authomessage" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered login-pop-form"
				role="document">
				<div class="modal-content" id="authomessage">
					<span class="mod-close" data-dismiss="modal" aria-hidden="true"><i
						class="ti-close"></i></span>
					<div class="modal-body">
						<h4 class="modal-header-title">Drop Message</h4>
						<div class="login-form">
							<form>

								<div class="form-group">
									<label>Subject</label>
									<div class="input-with-icons">
										<input type="text" class="form-control"
											placeholder="Message Title">
									</div>
								</div>

								<div class="form-group">
									<label>Messages</label>
									<div class="input-with-icons">
										<textarea class="form-control ht-80"></textarea>
									</div>
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-md full-width pop-login">Send
										Message</button>
								</div>

							</form>
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
		<script src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/select2.min.js'"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/slick.js"></script>
		<script src="${pageContext.request.contextPath}/js/slider-bg.js"></script>
		<script src="${pageContext.request.contextPath}/js/lightbox.js"></script> 
		<script src="${pageContext.request.contextPath}/js/imagesloaded.js"></script>
		<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
		<script src="${pageContext.request.contextPath}/js/custom.js"></script>
		
		<!-- Date Booking Script -->
		<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
		<!-- ============================================================== -->
		<!-- This page plugins -->
		<!-- ============================================================== -->
		

</body>
</html> --%>
<%@ include file="../inc/bottom.jsp" %>