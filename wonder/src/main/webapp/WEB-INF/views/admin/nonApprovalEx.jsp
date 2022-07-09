<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script src="${pageContext.request.contextPath}/js/adminpaging.js"></script>
<style type="text/css">
#img {
	padding-left: 10px;
}

.divSearch {
	flex: 0 0 100%;
	display: flex;
	justify-content: space-between;
}

#formflex {
	display: contents;
}

#optionbar {
	max-width: 300px;
	display: flex;
}

#searchinput {
	width: 220px;
}

div#srchTitBar {
	height: 30px;
}

#searchment {
	padding-left: 20px;
}
</style>
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
							<li class="active"><a
								href="<c:url value='/admin/nonApprovalEx'/>"><i
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

			<form action="<c:url value='/admin/nonApprovalEx'/>" method="post"
				name="frmPage">
				<input type="hidden" name="searchKeyword"
					value="${param.searchKeyword }"> <input type="hidden"
					name="searchCondition" value="${param.searchCondition }"> <input
					type="hidden" name="currentPage">
			</form>

			<div class="col-lg-9 col-md-8 col-sm-12">
				<div class="dashboard-body">

					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="_prt_filt_dash">


								<div class="divSearch">
									<form name="frmSearch" method="post" id="formflex"
										action='<c:url value="/admin/nonApprovalEx"/>'>
										<div class="_prt_filt_dash_flex">
											<div class="foot-news-last" id="optionbar">
												<div class="col-lg-6 col-md-6 col-sm-6">
													<div class="form-group">
														<select name="searchCondition" class="form-control">
															<option value="user_Id"
																<c:if test="${param.searchCondition == 'user_Id'}">selected="selected"</c:if>>아이디</option>
															<option value="name"
																<c:if test="${param.searchCondition == 'name'}">selected="selected"</c:if>>이름</option>
															<option value="nickname"
																<c:if test="${param.searchCondition == 'nickname'}">selected="selected"</c:if>>닉네임</option>
															<option value="email"
																<c:if test="${param.searchCondition == 'email'}">selected="selected"</c:if>>이메일</option>
														</select>
													</div>
												</div>
												<div class="input-group">
													<input type="text" class="form-control" id="searchinput"
														name="searchKeyword" placeholder="회원명, 아이디 등으로 조회"
														value="${param.searchKeyword}">
												</div>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>

					<c:if test="${!empty param.searchKeyword }">
						<p id="searchment">
							"${param.searchKeyword}" 검색 결과 총 <strong class="tit_cnt">${pagingInfo.totalRecord}</strong>
							건 검색되었습니다.
						</p>
					</c:if>

					<div class="col-lg-12 col-md-12">
						<div class="dashboard_property">
							<div class="table-responsive">
								<table class="table" id="memList">
									<thead class="thead-dark">
										<tr>
											<th scope="col">회원번호 / 아이디</th>
											<th scope="col" class="m2_hide">이름</th>
											<th scope="col" class="m2_hide">닉네임</th>
											<th scope="col" class="m2_hide">메일</th>
											<th scope="col" class="m2_hide">가입일</th>
											<th scope="col">회원분류</th>
											<th scope="col">승인 / 삭제</th>
										</tr>
									</thead>
									<tbody>
										<!-- tr block -->
										<c:if test="${empty list }">
											<tr>
												<td colspan="5">승인 대기 신청이 존재하지 않습니다.</td>
											</tr>
										</c:if>
										<c:if test="${!empty list}">
											<!--게시판 내용 반복문 시작  -->
											<c:forEach var="memberVo" items="${list }">
												<tr>
													<td>
														<div class="dash_prt_wrap">
															<div class="dash_prt_thumb" id="img">
																<img
																	src="${pageContext.request.contextPath}/img/mypage/expert_profile/${ExpertProfileVo.fileName}"
																	class="img-fluid" alt="프로필 사진" />
															</div>
															<div class="dash_prt_caption">
																<div class="prt_dashb_lot">No. ${memberVo.memNo }</div>
																<h5>${memberVo.userId}</h5>
															</div>
														</div>
													</td>
													<td class="m2_hide">
														<div class="prt_leads">
															<h6>${memberVo.name }</h6>
														</div>
													</td>
													<td class="m2_hide">
														<div class="prt_leads">
															<h6>${memberVo.nickname }</h6>
														</div>
													</td>
													<td class="m2_hide">
														<div class="_leads_view">
															<h5>${memberVo.email }</h5>
														</div>
														<div class="_leads_view_title">
															<span>mail account</span>
														</div>
													</td>
													<td class="m2_hide">
														<div class="_leads_posted">
															<h5>
																<fmt:formatDate value="${memberVo.regdate }"
																	pattern="yyyy-MM-dd HH:mm" />
															</h5>
														</div>
														<div class="_leads_view_title">
															<span>며칠전으로 계산</span>
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
														</c:if></td>
													<td>
														<div class="_leads_action">
															<a href="grantEx?memNo=${memberVo.memNo }"><i
																class="fas fa-edit"></i></a> <a
																href="delnonApEx?memNo=${memberVo.memNo }"><i
																class="fas fa-trash"></i></a>
														</div>
													</td>
												</tr>
											</c:forEach>
										</c:if>
										<!-- tr block -->
									</tbody>
								</table>

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