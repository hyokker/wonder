<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<style type="text/css">
 
</style>
<script type="text/javascript">

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
							<li><a href="<c:url value='/admin/memberList'/>"><i
									class="fa fa-users"></i>회원 관리<span class="notti_coun style-1">4</span></a></li>
							<li><a href="<c:url value='/admin/pdList'/>"><i
									class="fa fa-tasks"></i>게시글 관리<span class="notti_coun style-1">5</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalList'/>"><i
									class="fa fa-bookmark"></i>거래대기 목록<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="messages.html"><i class="fa fa-comment"></i>채팅
									목록<span class="notti_coun style-3">3</span></a></li>
							<li><a href="choose-package.html"><i class="fa fa-gift"></i>광고
									목록 목록<span class="expiration">10 days left</span></a></li>
							<li><a href="<c:url value='/admin/editAccount'/>"><i
									class="fa fa-user-tie"></i>내 정보</a></li>
							<li class="active"><a
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
						<!-- Basic Information -->
<%-- 						<form name="frmsubAdmin" method="post"
							action="<c:url value='/admin/createAdmin'/>"> --%>
							<form name="frmsubAdmin" method="post"
                     action="<c:url value='/admin/createAdmin' />">
							<fieldset>
								<div class="frm_submit_block">
									<h4>부서별 관리자 생성</h4>
									<div class="frm_submit_wrap">
										<div class="form-row">
											<div class="form-group col-md-6">
												<label>아이디</label> 
												<input name="adminId" id="adminId" type="text"
													class="form-control" placeholder="ID" required autofocus/>
												<input type="hidden" id="adminIdDup">
											</div>

											<div class="form-group col-md-6" style="padding-top: 33px;">
												<button class="btn btn-theme" type="submit" id="dupbtn">중복확인</button>
											</div>

											<div class="form-group col-md-6">
												<label>비밀번호</label> <input name="adminPwd" type="text"
													class="form-control" placeholder="PWD" id="pwd">
											</div>
											<div class="form-group col-md-6">
												<label>비밀번호 확인</label> <input name="adminPwd2" type="text"
													class="form-control" placeholder="CONFIRM PWD" id="pwd2">
											</div>
										</div>
									</div>
								</div>

								<div class="form-group col-lg-12 col-md-12">
									<label>부서별 관리자 생성 약관 *</label>
									<ul class="no-ul-list">
										<li><input id="aj-1" class="checkbox-custom" name="aj-1"
											type="checkbox"> <label for="aj-1"
											class="checkbox-custom-label">부서별 관리자를 생성하시는 것에
												동의하십니까?</label></li>
									</ul>
								</div>

								<div class="form-group col-lg-12 col-md-12">
									<button class="btn btn-theme" type="submit">생성</button>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>
<!-- ============================ User Dashboard End ================================== -->
<%@ include file="../inc/bottom.jsp"%>