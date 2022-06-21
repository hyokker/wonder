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
							<li><a href="<c:url value='/admin/pdList'/>"><i
									class="fa fa-tasks"></i>게시글 관리<span class="notti_coun style-1">5</span></a></li>
							<li class="active"><a href="<c:url value='/admin/nonApprovalList'/>"><i
									class="fa fa-bookmark"></i>거래대기 목록<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="s<c:url value='/admin/subadminList'/>"><i class="fa fa-id-badge"></i>부서별 관리자 
							관리<span class="notti_coun style-3">3</span></a></li>
							<li><a href="<c:url value='/admin/editAccount'/>"><i
									class="fa fa-user-tie"></i>내 정보</a></li>
							<li><a
								href="<c:url value='/admin/createAdmin'/>"><i
									class="fa fa-plus-circle"></i>부서별 관리자 생성</a></li>
						</ul>
					</div>

					<div class="dash_user_footer">
						<ul>
							<li><a href="#"><i class="fa fa-power-off"></i></a></li>
							<li><a href="<c:url value='/admin/email'/>"><i class="fa fa-envelope"></i></a></li>
							<li><a href="#"><i class="fa fa-cog"></i></a></li>
						</ul>
					</div>

				</div>
			</div>

			<div class="col-lg-9 col-md-8 col-sm-12">
				<div class="dashboard-body">

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
												class="table-property-price">900000만원</span>
										</div></td>
									<td class="action"><a href="#" class="delete"><i
											class="ti-close"></i> Delete</a></td>
								</tr>
								</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
					<!-- row -->
				</div>
			</div>

		</div>
	</div>
</section>
<!-- ============================ User Dashboard End ================================== -->
<%@ include file="../inc/bottom.jsp"%>