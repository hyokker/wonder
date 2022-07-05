<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<style type="text/css">
#img {
	padding-left: 10px;
}

#daysago {
	padding-left: 40px;
}
</style>
<script type="text/javascript">
	function pageProc(currentPage) {
		$('input[name=currentPage]').val(currentPage);
		$('form[name=frmPage]').submit();
	}
</script>
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
							<li class="active"><a
								href="<c:url value='/admin/memberList'/>"><i
									class="fa fa-users"></i>회원 관리<span class="notti_coun style-1">4</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalEx'/>"><i
									class="fa fa-check-square"></i>전문가 승인 대기 목록</a></li>
							<li><a href="<c:url value='/admin/pdList'/>"><i
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
							<li><a href="<c:url value='/admin/logout'/>"><i
									class="fa fa-power-off"></i></a></li>
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
								<div class="divSearch">
									<form name="frmSearch" method="post"
										action='<c:url value="/admin/memberList"/>'>
										<div class="_prt_filt_dash_flex">
											<div class="foot-news-last">
													<div class="col-lg-2 col-md-2 col-sm-2">
														<div class="form-group">
															<select name="searchCondition" class="form-control">
																<option value="orderbyreg">등록일순
																</option>
																<option value="orderbydeal">거래건순
																</option>
																<option value="orderbyvis">방문일순
																</option>
																<option value="orderbyname">이름순(오름차순)
																</option>
															</select>
														</div>
													</div>
												<div class="input-group">
													<input type="text" class="form-control"
														name="searchKeyword" placeholder="회원명, 아이디 등으로 조회"
														value="${param.searchKeyword}">
													<div class="input-group-append">
														<span type="button"
															class="input-group-text theme-bg b-0 text-light"><i
															class="fas fa-search"></i></span>
													</div>
												</div>
											</div>
										</div>

										<input type="submit" class="btn btn-outline-theme"
											value="excel 저장"></input>
								</div>
							</div>
						</div>

						<c:if test="${!empty param.searchKeyword }">
							<div id="searchresult">
								<p>
									"${param.searchKeyword }" 검색 결과 총<strong>${pagingInfo.totalRecord}</strong>건
									검색되었습니다.
								</p>
							</div>
						</c:if>

						<form action="<c:url value='/admin/memberList'/>" method="post"
							name="frmPage">
							<input type="hidden" name="searchKeyword"
								value="${param.searchKeyword }"> <input type="hidden"
								name="searchCondition" value="${param.searchCondition }">
							<input type="hidden" name="currentPage">
						</form>

						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="dashboard_property">
									<div class="table-responsive">
										<table class="table" id="memList">
											<thead class="thead-dark">
												<tr>
													<th scope="col">회원목록</th>
													<th scope="col" class="m2_hide">최근 방문일</th>
													<th scope="col" class="m2_hide">거래건수</th>
													<th scope="col" class="m2_hide">가입일</th>
													<th scope="col">회원분류</th>
													<th scope="col">삭제</th>
												</tr>
											</thead>
											<tbody>

												<!-- tr block -->
												<c:if test="${!empty list}">
													<!--게시판 내용 반복문 시작  -->
													<c:forEach var="memberVo" items="${list }">
														<tr>
															<td>
																<div class="dash_prt_wrap">
																	<div class="dash_prt_thumb" id="img">
																		<img
																			src="${pageContext.request.contextPath}/img/profile.png"
																			class="img-fluid" alt="" />
																	</div>
																	<div class="dash_prt_caption">
																		<h5>${memberVo.name}</h5>
																		<div class="prt_dashb_lot">${memberVo.memNo }</div>
																		<div class="prt_dash_rate">
																			<span>${memberVo.email }</span>
																		</div>
																	</div>
																</div>
															</td>
															<td class="m2_hide" id="daysago">
																<div class="prt_leads">
																	<span>3일 전</span>
																	<%-- ${Utility.lastVisit } --%>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_view">
																	<h5>3회</h5>
																</div>
																<div class="_leads_view_title">
																	<span>Number of deal</span>
																</div>
															</td>
															<td class="m2_hide">
																<div class="_leads_posted">
																	<h5>${memberVo.regdate }</h5>
																</div>
																<div class="_leads_view_title">
																	<span>16 Days ago</span>
																</div>
															</td>
															<td><c:if test="${memberVo.type eq '일반회원' }">
																	<div class="_leads_status" id="type1">
																		<span class="active" id="type">일반회원</span>
																	</div>
																</c:if> <c:if test="${memberVo.type eq '프리랜서' }">
																	<div class="_leads_status" id="type1">
																		<span class="expire" id="type">프리랜서</span>
																	</div>
																</c:if> <%-- 															<div class="_leads_status" id="type1">
																<span class="active" id="type">${memberVo.type }</span>
															</div> --%></td>
															<td>
																<div class="_leads_action">
																	<a href="delMember?memNo=${memberVo.memNo }"><i
																		class="fas fa-trash"></i></a>
																</div>
															</td>
														</tr>
													</c:forEach>
												</c:if>
												<!-- tr block -->
												<c:if test="${empty list}">
													<center>
														<p>게시글이 존재하지 않습니다.</p>
													</center>
												</c:if>
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</div>
						<!-- row -->

						<%@ include file="../adminInc/pagination.jsp"%>
					</div>

				</div>

			</div>
		</div>
</section>
<!-- ============================ User Dashboard End ================================== -->
<%@ include file="../inc/bottom.jsp"%>