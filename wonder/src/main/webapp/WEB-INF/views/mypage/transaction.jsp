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
						
						<div class="col-lg-3 col-md-4 col-sm-12">
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
										<li><a href="<c:url value='/mypage/bookmark' />"><i class="fa fa-bookmark"></i>찜해둔 상품<span class="notti_coun style-2">7</span></a></li>
										<li class="active"><a href="<c:url value='/mypage/transaction' />"><i class="fa fa-tasks"></i>거래내역</a></li>
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
							
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="_prt_filt_dash">
											<div class="_prt_filt_dash_flex">
												<div class="foot-news-last">
													<div class="input-group">
													  <input type="text" class="form-control" placeholder="상품명으로 검색">
														<div class="input-group-append">
															<span type="button" class="input-group-text theme-bg b-0 text-light"><i class="fas fa-search"></i></span>
														</div>
													</div>
												</div>
											</div>
											<div class="_prt_filt_dash_last m2_hide">
												<div class="_prt_filt_radius">
													
												</div>
												<div class="_prt_filt_add_new">
													<a href="submit-property-dashboard.html" class="prt_submit_link"><i class="fas fa-plus-circle"></i><span class="d-none d-lg-block d-md-block">더 많은 상품 보러가기</span></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="dashboard_property">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
														  <th scope="col">상품명</th>
														  <th scope="col" class="m2_hide">Leads</th>
														  <th scope="col" class="m2_hide">평점</th>
														  <th scope="col" class="m2_hide">작업기간</th>
														  <th scope="col">상태</th>
														  <th scope="col">Action</th>
														</tr>
													</thead>
													<tbody>
														<!-- tr block -->
														<tr>
															<td>
																<div class="dash_prt_wrap">
																	<div class="dash_prt_thumb">
																		<img src="<c:url value='/img/mypage/bookmark/ex01.jpg' />" class="img-fluid" alt="" />
																	</div>
																	<div class="dash_prt_caption">
																		<h5>디자인여기야</h5>
																		<div class="prt_dashb_lot">사용자가 사용하기 편안한 반응형 홈페이지를 제작해 드립니다.</div>
																		<div class="prt_dash_rate"><span>100,000 원</span></div>
																	</div>
																</div>
															</td>
															<td class="m2_hide">
																<div class="prt_leads"><span>27 till now</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="_leads_name style-1">K</a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="leades_more">10+</a></li>
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">816</h5></div>
																<div class="_leads_view_title"><span>Total Views</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>16 Aug - 12:40</h5></div>
																<div class="_leads_view_title"><span>16 Days ago</span></div>
															</td>
															<td>
																<div class="_leads_status"><span class="active">Active</span></div>
																<div class="_leads_view_title"><span>Till 12 Oct</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
																	<a href="#"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														</tr>
														
														<!-- tr block -->
														<tr>
															<td>
																<div class="dash_prt_wrap">
																	<div class="dash_prt_thumb">
																		<img src="<c:url value='/img/mypage/bookmark/ex02.jpg' />" class="img-fluid" alt="" />
																	</div>
																	<div class="dash_prt_caption">
																		<h5>메이크홈즈</h5>
																		<div class="prt_dashb_lot">SEO최적화 거품없는 가격으로 반응형 홈페이지 제작해 드립니다.</div>
																		<div class="prt_dash_rate"><span>550,000 원</span></div>
																	</div>
																</div>
															</td>
															<td class="m2_hide">
																<div class="prt_leads"><span>27 till now</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="_leads_name style-1">K</a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="leades_more">10+</a></li>
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">816</h5></div>
																<div class="_leads_view_title"><span>Total Views</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>16 Aug - 12:40</h5></div>
																<div class="_leads_view_title"><span>16 Days ago</span></div>
															</td>
															<td>
																<div class="_leads_status"><span class="expire">Expired</span></div>
																<div class="_leads_view_title"><span>Till 12 Oct</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
																	<a href="#"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														</tr>
														
														<!-- tr block -->
														<tr>
															<td>
																<div class="dash_prt_wrap">
																	<div class="dash_prt_thumb">
																		<img src="<c:url value='/img/mypage/bookmark/ex03.png' />" class="img-fluid" alt="" />
																	</div>
																	<div class="dash_prt_caption">
																		<h5>빌러블</h5>
																		<div class="prt_dashb_lot">디자인 파일을 주시면 퍼블리싱해 드립니다.</div>
																		<div class="prt_dash_rate"><span>55,000 원</span></div>
																	</div>
																</div>
															</td>
															<td class="m2_hide">
																<div class="prt_leads"><span>27 till now</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="_leads_name style-1">K</a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="leades_more">10+</a></li>
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">816</h5></div>
																<div class="_leads_view_title"><span>Total Views</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>16 Aug - 12:40</h5></div>
																<div class="_leads_view_title"><span>16 Days ago</span></div>
															</td>
															<td>
																<div class="_leads_status"><span class="active">Active</span></div>
																<div class="_leads_view_title"><span>Till 12 Oct</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
																	<a href="#"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														</tr>
														
														<!-- tr block -->
														<tr>
															<td>
																<div class="dash_prt_wrap">
																	<div class="dash_prt_thumb">
																		<img src="<c:url value='/img/mypage/bookmark/ex04.jpg' />" class="img-fluid" alt="" />
																	</div>
																	<div class="dash_prt_caption">
																		<h5>따따따디자인</h5>
																		<div class="prt_dashb_lot">반응형 홈페이지제작 및 기업 맞춤형 홈페이지 제작해 드립니다.</div>
																		<div class="prt_dash_rate"><span>550,000 원</span></div>
																	</div>
																</div>
															</td>
															<td class="m2_hide">
																<div class="prt_leads"><span>27 till now</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="_leads_name style-1">K</a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#" class="leades_more">10+</a></li>
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">816</h5></div>
																<div class="_leads_view_title"><span>Total Views</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>16 Aug - 12:40</h5></div>
																<div class="_leads_view_title"><span>16 Days ago</span></div>
															</td>
															<td>
																<div class="_leads_status"><span class="expire">Expired</span></div>
																<div class="_leads_view_title"><span>Till 12 Oct</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
																	<a href="#"><i class="fas fa-trash"></i></a>
																</div>
															</td>
														</tr>
														
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- row -->
							
								
							</div>
								
						</div>
						
					</div>
				</div>
			</section>
			<!-- ============================ User Dashboard End ================================== -->
			
			<!-- ============================ Call To Action ================================== -->

			
			
			
<%@ include file="../inc/bottom.jsp" %>