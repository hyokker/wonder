<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function() {
		$('form[name=frm1]').submit(function() {
			if ($("#pwd").val().length < 1) {
				alert("비밀번호를 입력하세요");
				$("#pwd").focus();
				event.preventDefault();
			} else if ($("#pwd").val() != $("#pwd2").val()) {
				alert("비밀번호가 일치하지 않습니다.");
				$("#pwd2").focus();
				event.preventDefault();
			}
		});
	});
</script>
<!-- ============================================================== -->
<!-- Top header  -->
<!-- ============================================================== -->

<!-- ============================ Page Title Start================================== -->
<div class="page-title"
	style="background: #f4f4f4 url(https://via.placeholder.com/1920x980);"
	data-overlay="5">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<div class="breadcrumbs-wrap">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active" aria-current="page">My
							Profile</li>
					</ol>
					<h2 class="breadcrumb-title">My Account & Profile</h2>
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
						<img src="https://via.placeholder.com/500x500"
							class="img-fluid avater" alt="">
						<h4>Adam Harshvardhan</h4>
						<span>Canada USA</span>
					</div>

					<div class="dash_user_menues">
						<ul>
							<li><a href="dashboard.html"><i
									class="fa fa-tachometer-alt"></i>Dashboard<span
									class="notti_coun style-1">4</span></a></li>
							<li class="active"><a href="my-profile.html"><i
									class="fa fa-user-tie"></i>My Profile</a></li>
							<li><a href="bookmark-list.html"><i
									class="fa fa-bookmark"></i>Saved Property<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="my-property.html"><i class="fa fa-tasks"></i>My
									Properties</a></li>
							<li><a href="messages.html"><i class="fa fa-envelope"></i>Messages<span
									class="notti_coun style-3">3</span></a></li>
							<li><a href="choose-package.html"><i class="fa fa-gift"></i>Choose
									Package<span class="expiration">10 days left</span></a></li>
							<li><a href="submit-property-dashboard.html"><i
									class="fa fa-pen-nib"></i>Submit New Property</a></li>
							<li><a href="change-password.html"><i
									class="fa fa-unlock-alt"></i>Change Password</a></li>
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
					<div class="dashboard-wraper">
						<!-- Basic Information -->
						<form name="frm1" method="post"
							action="<c:url value='/admin/editAccount'/>">
							<fieldset>
								<div class="frm_submit_block">
									<h4>내 정보</h4>
									<div class="frm_submit_wrap">
										<div class="form-row">
											<div class="form-group col-md-6">
												<label>아이디</label> <input type="text" class="form-control"
													value="${adminVo.adminId }">
											</div>
											<div class="form-group col-md-6" style="visibility: hidden;">
											</div>
											<div class="form-group col-md-6">
												<label>비밀번호</label> <input type="text" class="form-control"
													value="PWD" id="pwd">
											</div>
											<div class="form-group col-md-6">
												<label>비밀번호 확인</label> <input type="text"
													class="form-control" value="CONFIRM PWD" id="pwd2">
											</div>
										</div>
									</div>
								</div>

								<div class="form-group col-lg-12 col-md-12 mt-4">
									<button class="btn btn-theme btn-lg" type="submit"
										id="editsave">변경사항 저장</button>
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