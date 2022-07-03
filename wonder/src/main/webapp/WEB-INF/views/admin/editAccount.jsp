<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<style type="text/css">
input#adminId {
	background-color: #E9ECEF;
}

.dupmessagef {
	color: red;
}

.dupmessaget {
	color: #25BC74;
}
</style>
<script type="text/javascript">
	$(function() {
		$('form[name=frmAdminProfile]').submit(function() {
			if ($('#adminPwd').val().length < 1) {
				alert("현재 비밀번호를 입력하세요");
				$('#adminPwd').focus();
				event.preventDefault();
			} else if ($('#newpwd').val().length < 1) {
				alert("새 비밀번호를 입력하세요");
				$('#newpwd').focus();
				event.preventDefault();
			} else if ($("#newpwd").val() != $("#newpwd2").val()) {
				alert("비밀번호가 일치하지 않습니다");
				$("#newpwd2").focus();
				event.preventDefault();
			}
		});

		$('#adminPwd').keyup(function() {
			var data = $(this).val();

			$.ajax({
				url : "<c:url value='/admin/confirmPrePwd'/>",
				type : 'GET',
				data : "adminPwd=" + data,
				success : function(response) {
					var output = "";
					if (response) {
						output = "현재 비밀번호 일치";
						$('.adminPwd').addClass('dupmessaget');
						$('.adminPwd').removeClass('dupmessagef');
					} else {
						output = "현재 비밀번호 불일치";
						$('.adminPwd').addClass('dupmessagef');
						$('.adminPwd').removeClass('dupmessaget');
					}
					$('.adminPwd').text(output);
				},
				error : function(xhr, status, error) {
					alert("adminPwd:" + adminPwd);
				}
			});
		});

		$('#newpwd').keyup(function() {
			var newpwd = $('#newpwd').val();
			var newpwd2 = $('#newpwd2').val();

			if (newpwd.length < 1) {
				$('.emptyPwd').text("필수 입력 사항");
				$('.emptyPwd').addClass('dupmessagef');
				$('.emptyPwd').removeClass('dupmessaget');
			} else if (newpwd.length >= 1 && newpwd2.length >= 1) {
				if (newpwd != newpwd2) {
					$('.confirmPwd').text("비밀번호 불일치");
					$('.confirmPwd').addClass('dupmessagef');
					$('.confirmPwd').removeClass('dupmessaget');
				} else if (newpwd == newpwd2) {
					$('.confirmPwd').text("비밀번호 일치");
					$('.confirmPwd').addClass('dupmessaget');
					$('.confirmPwd').removeClass('dupmessagef');
				}
			} else if (newpwd.length >= 1) {
				$('.emptyPwd').text("");
			}
		});

		$('#newpwd2').keyup(function() {
			var newpwd = $('#newpwd').val();
			var newpwd2 = $('#newpwd2').val();

			if (newpwd2.length < 1) {
				$('.confirmPwd').text("필수 입력 사항");
				$('.confirmPwd').addClass('dupmessagef');
			} else if (newpwd.length >= 1 && newpwd2.length >= 1) {
				if (newpwd != newpwd2) {
					$('.confirmPwd').text("비밀번호 불일치");
					$('.confirmPwd').addClass('dupmessagef');
					$('.confirmPwd').removeClass('dupmessaget');
				} else if (newpwd == newpwd2) {
					$('.confirmPwd').text("비밀번호 일치");
					$('.confirmPwd').addClass('dupmessaget');
					$('.confirmPwd').removeClass('dupmessagef');
				}
			}
		});

	});
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
							<li class="active"><a
								href="<c:url value='/admin/editAccount'/>"><i
									class="fa fa-user-tie"></i>내 정보</a></li>
							<li><a href="<c:url value='/admin/createAdmin'/>"><i
									class="fa fa-plus-circle"></i>부서별 관리자 생성</a></li>
						</ul>
					</div>

					<div class="dash_user_footer">
						<ul>
							<li><a href="<c:url value='/admin/logout'/>"><i class="fa fa-power-off"></i></a></li>
							<li><a href="<c:url value='/admin/email'/>"><i
									class="fa fa-envelope"></i></a></li>
							<li><a href="#"><i class="fa fa-cog"></i></a></li>
						</ul>
					</div>

				</div>
			</div>

			<div class="col-lg-9 col-md-8 col-sm-12">
				<div class="dashboard-body">
					<div class="dashboard-wraper">
						<!-- Basic Information -->
						<form name="frmAdminProfile" method="post"
							action="<c:url value='/admin/editAccount'/>">
							<fieldset>
								<div class="frm_submit_block">
									<h4>내 정보</h4>
									<div class="frm_submit_wrap">
										<div class="form-row">

											<div class="form-group col-md-6">
												<label>아이디</label> <input type="text" class="form-control"
													value="${adminVo.adminId }" disabled="disabled"
													id="adminId">
											</div>
											<div class="form-group col-md-6" style="visibility: hidden;">
											</div>
											<div class="form-group col-md-6">
												<label>현재 비밀번호</label> <input type="text"
													class="form-control" placeholder="PRESENT PWD"
													id="adminPwd" name="adminPwd" autofocus>
											</div>
											<div class="form-group col-md-6" style="padding-top: 46px;">
												<span class="adminPwd"></span>
											</div>
											<div class="form-group col-md-6">
												<label>새 비밀번호</label> <input type="password"
													class="form-control" placeholder="NEW PWD" id="newpwd"
													name="newPwd" required="required">
											</div>
											<div class="form-group col-md-6" style="padding-top: 46px;">
												<span class="emptyPwd"></span>
											</div>
											<div class="form-group col-md-6">
												<label>새 비밀번호 확인</label> <input type="password"
													class="form-control" placeholder="CONFIRM NEW PWD"
													id="newpwd2">
											</div>
											<div class="form-group col-md-6" style="padding-top: 46px;">
												<span class="confirmPwd"></span>
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