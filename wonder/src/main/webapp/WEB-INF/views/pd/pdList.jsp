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
            <!-- Top header  -->
            <!-- ============================================================== -->
           
			<div class="clearfix"></div>
			<!-- ============================================================== -->
			<!-- Top header  -->
			<!-- ============================================================== -->
			
			<!-- ============================ All Property ================================== -->
			<section class="gray pt-4">
			
				<div class="container">
					
					<div class="row m-0">
						<div class="short_wraping">
							<div class="row align-items-center">
							
								<div class="col-lg-3 col-md-6 col-sm-12  col-sm-6">
									<ul class="shorting_grid">
										<li class="list-inline-item"><a href="grid-layout-with-sidebar.html" class="active"><span class="ti-layout-grid2"></span>Grid</a></li>
										<li class="list-inline-item"><a href="list-layout-with-sidebar.html"><span class="ti-view-list"></span>List</a></li>
										<li class="list-inline-item"><a href="#"><span class="ti-map-alt"></span>Map</a></li>
									</ul>
								</div>
						
								<div class="col-lg-6 col-md-12 col-sm-12 order-lg-2 order-md-3 elco_bor col-sm-12">
									<div class="shorting_pagination">
										<div class="shorting_pagination_laft">
											<h5>Showing 1-25 of 72 results</h5>
										</div>
										<div class="shorting_pagination_right">
											<ul>
												<li><a href="javascript:void(0);" class="active">1</a></li>
												<li><a href="javascript:void(0);">2</a></li>
												<li><a href="javascript:void(0);">3</a></li>
												<li><a href="javascript:void(0);">4</a></li>
												<li><a href="javascript:void(0);">5</a></li>
												<li><a href="javascript:void(0);">6</a></li>
											</ul>
										</div>
									</div>
								</div>
						
								<div class="col-lg-3 col-md-6 col-sm-12 order-lg-3 order-md-2 col-sm-6">
									<div class="shorting-right">
										<label>Short By:</label>
										<div class="dropdown show">
											<a class="btn btn-filter dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<span class="selection">Most Rated</span>
											</a>
											<div class="drp-select dropdown-menu">
												<a class="dropdown-item" href="JavaScript:Void(0);">Most Rated</a>
												<a class="dropdown-item" href="JavaScript:Void(0);">Most Viewd</a>
												<a class="dropdown-item" href="JavaScript:Void(0);">News Listings</a>
												<a class="dropdown-item" href="JavaScript:Void(0);">High Rated</a>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
					
					<div class="row">
						
						<!-- property Sidebar -->
						<div class="col-lg-4 col-md-12 col-sm-12">
							<div class="page-sidebar p-0">
								<a class="filter_links" data-toggle="collapse" href="#fltbox" role="button" aria-expanded="false" aria-controls="fltbox">Open Advance Filter<i class="fa fa-sliders-h ml-2"></i></a>							
								<div class="collapse" id="fltbox">
									<!-- Find New Property -->
									<div class="sidebar-widgets p-4">
										
									
				
										
										<div class="form-group">
											<div class="simple-input">
												<select id="ptype" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">Apartment</option>
													<option value="2">Condo</option>
													<option value="3">Family</option>
													<option value="4">Houses</option>
													<option value="5">Villa</option>
												</select>
											</div>
										</div>
										
										<div class="form-group">
											<div class="simple-input">
												<select id="status" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">Apartment</option>
													<option value="2">Condo</option>
													<option value="3">Houses</option>
													<option value="4">Villa</option>
													<option value="5">Land</option>
												</select>
											</div>
										</div>
										
									
										
										<div class="form-group">
											<div class="simple-input">
												<select id="bedrooms" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</select>
											</div>
										</div>
									
										
										<div class="form-group">
											<div class="simple-input">
												<select id="garage" class="form-control">
													<option value="">&nbsp;</option>
													<option value="1">Any Type</option>
													<option value="2">Yes</option>
													<option value="3">No</option>
												</select>
											</div>
										</div>
										
										
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<div class="simple-input">
														<input type="text" class="form-control" placeholder="Min Area">
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<div class="simple-input">
														<input type="text" class="form-control" placeholder="Max Area">
													</div>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 pt-4 pb-4">
												<h6>Choose Price</h6>
												<div class="rg-slider">
													 <input type="text" class="js-range-slider" name="my_range" value="" />
												</div>
											</div>
										</div>									
										
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 pt-4">
												<h6>Advance Features</h6>
												<ul class="row p-0 m-0">
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-1" class="checkbox-custom" name="a-1" type="checkbox">
														<label for="a-1" class="checkbox-custom-label">Air Condition</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-2" class="checkbox-custom" name="a-2" type="checkbox">
														<label for="a-2" class="checkbox-custom-label">Bedding</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-3" class="checkbox-custom" name="a-3" type="checkbox">
														<label for="a-3" class="checkbox-custom-label">Heating</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-4" class="checkbox-custom" name="a-4" type="checkbox">
														<label for="a-4" class="checkbox-custom-label">Internet</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-5" class="checkbox-custom" name="a-5" type="checkbox">
														<label for="a-5" class="checkbox-custom-label">Microwave</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-6" class="checkbox-custom" name="a-6" type="checkbox">
														<label for="a-6" class="checkbox-custom-label">Smoking Allow</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-7" class="checkbox-custom" name="a-7" type="checkbox">
														<label for="a-7" class="checkbox-custom-label">Terrace</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-8" class="checkbox-custom" name="a-8" type="checkbox">
														<label for="a-8" class="checkbox-custom-label">Balcony</label>
													</li>
													<li class="col-lg-6 col-md-6 p-0">
														<input id="a-9" class="checkbox-custom" name="a-9" type="checkbox">
														<label for="a-9" class="checkbox-custom-label">Icon</label>
													</li>
												</ul>
											</div>
										</div>
										
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 pt-4">
												<button class="btn theme-bg rounded full-width">Find New Home</button>
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
															<span class="_list_blickes _netork">6 Network</span>
															<span class="_list_blickes types">Family</span>
														</div>
														<div class="_card_flex_last">
															<h6 class="listing-card-info-price mb-0">$7,000</h6>
														</div>
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">5689 Resot Relly Market, Montreal Canada, HAQC445</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>3 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>1 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>800 sqft
													</div>
												</div>
											</div>
											
											<div class="listing-detail-footer">
												<div class="footer-first">
													<div class="foot-rates">
														<span class="elio_rate good">4.2</span>
														<div class="_rate_stio">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
													</div>
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
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Rent</div>
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
															<span class="_list_blickes _netork">7 Network</span>
															<span class="_list_blickes types">Condos</span>
														</div>
														<div class="_card_flex_last">
															<h6 class="listing-card-info-price mb-0">$10,500</h6>
														</div>
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">9632 New Green Garden, Huwai Denever USA, AWE789O</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>4 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>2 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>1000 sqft
													</div>
												</div>
											</div>
											
											<div class="listing-detail-footer">
												<div class="footer-first">
													<div class="foot-rates">
														<span class="elio_rate perfect">4.7</span>
														<div class="_rate_stio">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
													</div>
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
															<h6 class="listing-card-info-price mb-0">$8,700</h6>
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
													<div class="foot-rates">
														<span class="elio_rate good">4.3</span>
														<div class="_rate_stio">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
													</div>
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
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Rent</div>
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
															<span class="_list_blickes _netork">10 Network</span>
															<span class="_list_blickes types">Villas</span>
														</div>
														<div class="_card_flex_last">
															<h6 class="listing-card-info-price mb-0">$9,100</h6>
														</div>
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">7298 Rani Market Near Saaket, Henever Canada, QWUI98</a></h4>
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
													<div class="foot-rates">
														<span class="elio_rate perfect">4.8</span>
														<div class="_rate_stio">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
													</div>
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
															<span class="_list_blickes _netork">4 Network</span>
															<span class="_list_blickes types">Offices</span>
														</div>
														<div class="_card_flex_last">
															<h6 class="listing-card-info-price mb-0">$7,400</h6>
														</div>
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">5629 Rani Market Near Saaket, Henever Canada, QWUI98</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>4 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>2 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>810 sqft
													</div>
												</div>
											</div>
											
											<div class="listing-detail-footer">
												<div class="footer-first">
													<div class="foot-rates">
														<span class="elio_rate good">4.5</span>
														<div class="_rate_stio">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
													</div>
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
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
									<div class="property-listing list_view">
										
										<div class="listing-img-wrapper">
											<div class="_exlio_125">For Rent</div>
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
															<span class="_list_blickes _netork">4 Network</span>
															<span class="_list_blickes types">Apartment</span>
														</div>
														<div class="_card_flex_last">
															<h6 class="listing-card-info-price mb-0">$9,700</h6>
														</div>
													</div>
													<div class="_card_list_flex">
														<div class="_card_flex_01">
															<h4 class="listing-name verified"><a href="single-property-1.html" class="prt-link-detail">3297 Rani Market Near Saaket, Henever Canada, QWUI98</a></h4>
														</div>
													</div>
												</div>
											</div>
											
											<div class="price-features-wrapper">
												<div class="list-fx-features">
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bed.svg" width="13" alt="" /></div>6 Beds
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/bathtub.svg" width="13" alt="" /></div>3 Bath
													</div>
													<div class="listing-card-info-icon">
														<div class="inc-fleat-icon"><img src="assets/img/move.svg" width="13" alt="" /></div>1200 sqft
													</div>
												</div>
											</div>
											
											<div class="listing-detail-footer">
												<div class="footer-first">
													<div class="foot-rates">
														<span class="elio_rate perfect">4.8</span>
														<div class="_rate_stio">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
													</div>
												</div>
												<div class="footer-flex">
													<a href="property-detail.html" class="prt-view">View Detail</a>
												</div>
											</div>
										</div>
										
									</div>
								</div>
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
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/ion.rangeSlider.min.js"></script>
		<script src="assets/js/select2.min.js"></script>
		<script src="assets/js/jquery.magnific-popup.min.js"></script>
		<script src="assets/js/slick.js"></script>
		<script src="assets/js/slider-bg.js"></script>
		<script src="assets/js/lightbox.js"></script> 
		<script src="assets/js/imagesloaded.js"></script>
		<script src="assets/js/daterangepicker.js"></script>
		<script src="assets/js/custom.js"></script>
		
		<!-- ============================================================== -->
		<!-- This page plugins -->
		<!-- ============================================================== -->
		

	</body>
<%@ include file="../inc/bottom.jsp" %>