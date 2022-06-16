<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp" %>
<%@ include file="incSide.jsp" %>
<input type="hidden" id="pageCheck" value="bookmark">

<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">


						
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