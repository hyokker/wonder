<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!-- ============================================================== -->
<!-- Top header  -->
<!-- ============================================================== -->

<!-- ============================ Page Title Start================================== -->
<%@ include file="../adminInc/pageTitle.jsp"%>
<!-- ============================ Page Title End ================================== -->

<!-- ============================ User Dashboard ================================== -->
<section class="gray pt-5 pb-5">
	<div class="container-fluid">

		<div class="row">

			<div class="col-lg-3 col-md-4 col-sm-12">
				<div class="property_dashboard_navbar">

					<div class="dash_user_avater">
						<img src="https://via.placeholder.com/500x500"
							class="img-fluid avater" alt="">
						<h4>${adminVo.adminId }</h4>
						<span>관리자 계정</span>
					</div>

					<div class="dash_user_menues">

						<ul>
							<li><a href="<c:url value='/admin/dashboard'/>"><i
									class="fa fa-tachometer-alt"></i>매출현황 통계</a></li>
							<li><a href="<c:url value='/admin/memberList'/>"><i
									class="fa fa-users"></i>회원 관리<span class="notti_coun style-1">4</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalEx'/>"><i
									class="fa fa-check-square"></i>전문가 승인 대기 목록</a></li>
							<li class="active"><a href="<c:url value='/admin/pdList'/>"><i
									class="fa fa-tasks"></i>게시글 관리<span class="notti_coun style-1">5</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalList'/>"><i
									class="fa fa-bookmark"></i>거래대기 목록<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="<c:url value='/admin/subadminList'/>"><i
									class="fa fa-id-badge"></i>부서별 관리자 관리<span
									class="notti_coun style-3">3</span></a></li>
							<li><a href="<c:url value='/admin/editAccount'/>"><i
									class="fa fa-user-tie"></i>내 정보</a></li>
							<li><a href="<c:url value='/admin/createAdmin'/>"><i
									class="fa fa-plus-circle"></i>부서별 관리자 생성</a></li>
						</ul>
					</div>
					<div class="dash_user_footer">
						<ul>
							<li><a href="#"><i class="fa fa-power-off"></i></a></li>
							<li><a href="<c:url value='/admin/email'/>"><i
									class="fa fa-envelope"></i></a></li>
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
											<input type="text" class="form-control"
												placeholder="아이디, 제목 등으로 조회" size="20">
											<div class="input-group-append">
												<span type="button"
													class="input-group-text theme-bg b-0 text-light"><i
													class="fas fa-search"></i></span>
											</div>
										</div>
									</div>
								</div>

								<div class="col-lg-2 col-md-2 col-sm-2">
									<div class="form-group">
										<select id="recipient" class="form-control">
											<option value="1">등록일순</option>
											<option value="2">조회수순</option>
										</select>
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
												<th scope="col">게시글목록</th>
												<th scope="col" class="m2_hide">조회수</th>
												<th scope="col" class="m2_hide">언어/프레임워크</th>
												<th scope="col" class="m2_hide">등록일</th>
												<th scope="col">삭제</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${!empty list }">
												<!-- tr block -->
												<c:forEach var="productVo" items="${list }">
													<tr>
														<td>
															<div class="dash_prt_wrap">
																<div class="dash_prt_thumb">
																	<img src="https://via.placeholder.com/800x500"
																		class="img-fluid" alt="" />
																</div>
																<div class="dash_prt_caption">
																	<h5>${productVo.pdTitle }</h5>
																	<div class="prt_dashb_lot">회원이메일 넣을 예정</div>
																	<div class="prt_dash_rate">
																		<span>${productVo.userId }</span>
																	</div>
																</div>
															</div>
														</td>
														<td class="m2_hide">
															<div class="prt_leads">
																<span>${productVo.readCount }회</span>
															</div>
															<div class="prt_leads_list">
																<ul>
																	<li><a href="#"><img
																			src="https://via.placeholder.com/500x500"
																			class="img-fluid img-circle" alt="" /></a></li>
																	<li><a href="#"><img
																			src="https://via.placeholder.com/500x500"
																			class="img-fluid img-circle" alt="" /></a></li>
																	<li><a href="#" class="_leads_name style-1">read</a></li>
																	<li><a href="#"><img
																			src="https://via.placeholder.com/500x500"
																			class="img-fluid img-circle" alt="" /></a></li>
																	<li><a href="#" class="leades_more">${productVo.readCount }+</a></li>
																</ul>
															</div>
														</td>
														<td class="m2_hide">
															<div class="_leads_view">
																<h5 class="up">${productVo.lang }/${productVo.frame }</h5>
															</div>
															<div class="_leads_view_title">
																<span>language/framework</span>
															</div>
														</td>
														<td class="m2_hide">
															<div class="_leads_posted">
																<h5>${productVo.regdate}</h5>
															</div>
															<div class="_leads_view_title">
																<span>16일전</span>
															</div>
														</td>
														<td>
															<div class="_leads_action">
																<a href="delProduct?pdNo=${productVo.pdNo }"><i class="fas fa-trash"></i></a>
															</div>
														</td>
													</tr>
												</c:forEach>
											</c:if>

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
<%@ include file="../inc/bottom.jsp"%>