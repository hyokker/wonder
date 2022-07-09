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

			<div class="col-lg-3 col-md-4">
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
							<li><a href="<c:url value='/admin/pdList'/>"><i
									class="fa fa-tasks"></i>게시글 관리<span class="notti_coun style-1">5</span></a></li>
							<li class="active"><a
								href="<c:url value='/admin/nonApprovalList'/>"><i
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

			<form action="<c:url value='/admin/nonApprovalList'/>" method="post"
				name="frmPage">
				<input type="hidden" name="searchKeyword"
					value="${param.searchKeyword }"> <input type="hidden"
					name="searchCondition" value="${param.searchCondition }"> <input
					type="hidden" name="currentPage">
			</form>

			<div class="col-lg-9 col-md-8 col-sm-12">
				<div class="dashboard-body">

					<div class="col-lg-12 col-md-12">
						<div class="_prt_filt_dash">

							<div class="divSearch">
								<form name="frmSearch" method="post" id="formflex"
									action='<c:url value="/admin/nonApprovalList"/>'>
									<div class="_prt_filt_dash_flex">
										<div class="foot-news-last" id="optionbar">
											<div class="col-lg-6 col-md-6 col-sm-6">
												<div class="form-group">
													<select name="searchCondition" class="form-control">
														<option value="user_Id"
															<c:if test="${param.searchCondition == 'user_Id'}">selected="selected"</c:if>>아이디</option>
													</select>
												</div>
											</div>
											<div class="input-group">
												<input type="text" class="form-control" id="searchinput"
													name="searchKeyword" placeholder="아이디로 조회"
													value="${param.searchKeyword}">
												<!-- 													<div class="input-group-append">
														<btton type="submit"
															class="input-group-text theme-bg b-0 text-light">
														<i class="fas fa-search"></i>
														</button>
													</div> -->
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

					<div class="dashboard-wraper">

						<!-- Bookmark Property -->
						<div class="frm_submit_block">
							<h4>거래대기 목록</h4>
						</div>
						<table class="property-table-wrap responsive-table bkmark">

							<tbody>
								<tr>
									<th><i class="fa fa-file-text"></i>결제 승인되지 않은 거래 내역</th>
									<th></th>
								</tr>
								<c:if test="${!empty list }">
									<c:forEach var="productVo" items="${list }">
										<!-- Item #1 -->
										<tr>
											<td class="dashboard_propert_wrapper"><img
												src="${pageContext.request.contextPath}/img/np1.jpg" alt="">
												<div class="title">
													<h4>
														<a href="#">${productVo.pdTitle }</a>
													</h4>
													<span>${productVo.userId }</span> <span
														class="table-property-price">이거를 어디서 불러올까 만원</span>
												</div></td>
											<td class="action"><a
												href="delnonApList?formNo=${formVo.formNo }" class="delete"><i
													class="ti-close"></i> Delete</a></td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
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