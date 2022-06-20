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
							<li><a href="messages.html"><i class="fa fa-comment"></i>채팅
									목록<span class="notti_coun style-3">3</span></a></li>
							<li><a href="choose-package.html"><i class="fa fa-gift"></i>광고
									목록 목록<span class="expiration">10 days left</span></a></li>
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
							<li><a href="#"><i class="fa fa-envelope"></i></a></li>
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

								<!-- Item #1 -->
								<tr>
									<td class="dashboard_propert_wrapper"><img
										src="${pageContext.request.contextPath}/img/np1.jpg" alt="">
										<div class="title">
											<h4>
												<a href="#">최적화된 모바일 앱을 깔끔하게 개발해 드립니다.</a>
											</h4>
											<span>김개발</span> <span
												class="table-property-price">90000원 / 할부</span>
										</div></td>
									<td class="action"><a href="#" class="delete"><i
											class="ti-close"></i> Delete</a></td>
								</tr>

								<!-- Item #2 -->
								<tr>
									<td class="dashboard_propert_wrapper"><img
										src="${pageContext.request.contextPath}/img/np2.jpg" alt="">
										<div class="title">
											<h4>
												<a href="#">고객 맞춤형 반응형 홈페이지 제작해 드립니다.</a>
											</h4>
											<span>박웹디</span> <span
												class="table-property-price">535,000 원</span>
										</div></td>
									<td class="action"><a href="#" class="delete"><i
											class="ti-close"></i> Delete</a></td>
								</tr>

								<!-- Item #3 -->
								<tr>
									<td class="dashboard_propert_wrapper"><img
										src="https://via.placeholder.com/800x500" alt="">
										<div class="title">
											<h4>
												<a href="#">Selway Villas</a>
											</h4>
											<span>33 William St. Northbrook, IL </span> <span
												class="table-property-price">$420,000</span>
										</div></td>
									<td class="action"><a href="#" class="delete"><i
											class="ti-close"></i> Delete</a></td>
								</tr>

								<!-- Item #4 -->
								<tr>
									<td class="dashboard_propert_wrapper"><img
										src="https://via.placeholder.com/800x500" alt="">
										<div class="title">
											<h4>
												<a href="#">Town Manchester</a>
											</h4>
											<span> 7843 Durham Avenue, MD </span> <span
												class="table-property-price">$420,000</span>
										</div></td>
									<td class="action"><a href="#" class="delete"><i
											class="ti-close"></i> Delete</a></td>
								</tr>

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