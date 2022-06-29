<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/mypage/incSide" />
<%-- <%@ include file="incSide.jsp" %> --%>
<input type="hidden" id="pageCheck" value="transaction">

<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">

						
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
														  <th scope="col" class="m2_hide">조회수</th>
														  <th scope="col" class="m2_hide">평점</th>
														  <th scope="col" class="m2_hide">작업기간</th>
														  <th scope="col">상태</th>
														  <th scope="col">의뢰서 확인</th>
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
																<div class="prt_leads"><span>1,264</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="_leads_name style-1">음</a></li> -->
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="leades_more">10+</a></li> -->
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">4.16</h5></div>
																<div class="_leads_view_title"><span>평균점수</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>14일 이내</h5></div>
															</td>
															<td>
																<div class="_leads_status"><span class="active">거래중</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
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
																<div class="prt_leads"><span>4,148</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="_leads_name style-1">음</a></li> -->
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="leades_more">10+</a></li> -->
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">4.42</h5></div>
																<div class="_leads_view_title"><span>평균점수</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>30일 이내</h5></div>
															</td>
															<td>
																<div class="_leads_status"><span class="expire">거래취소</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
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
																<div class="prt_leads"><span>1,385</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="_leads_name style-1">음</a></li> -->
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="leades_more">10+</a></li> -->
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">4.68</h5></div>
																<div class="_leads_view_title"><span>평균점수</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>14일 이내</h5></div>
															</td>
															<td>
																<div class="_leads_status"><span class="active">거래중</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
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
																<div class="prt_leads"><span>2,504</span></div>
																<div class="prt_leads_list">
																	<ul>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="_leads_name style-1">음</a></li> -->
																		<li><a href="#"><img src="https://via.placeholder.com/500x500" class="img-fluid img-circle" alt="" /></a></li>
																		<!-- <li><a href="#" class="leades_more">10+</a></li> -->
																	</ul>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view"><h5 class="up">4.88</h5></div>
																<div class="_leads_view_title"><span>평균점수</span></div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted"><h5>7일 이내</h5></div>
															</td>
															<td>
																<div class="_leads_status"><span class="expire">거래취소</span></div>
															</td>
															<td>
																<div class="_leads_action">
																	<a href="#"><i class="fas fa-edit"></i></a>
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