<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/js/admin.js'/>"></script>
<style type="text/css">
.dupmessagef {
	color: red;
}

.dupmessaget {
	color: #25BC74;
}
</style>
<script type="text/javascript">
	$(function() {
		$('form[name=frmsubAdmin]').submit(function(){
			if($.trim($('#adminId').val()) == ""){
				$('.dupmessageId').text('아이디 생성규칙에 어긋남 (다섯글자 이상)');
				$('.dupmessageId').addClass('dupmessagef');
				$('.dupmessageId').removeClass('dupmessaget');
				$('#adminId').focus();
				event.preventDefault();		  
		 	}else if($("#pwd").val().length<1) {
			    alert("비밀번호를 입력하세요");
			    $("#pwd").focus();
			    event.preventDefault();
			}else if($("#pwd").val()!=$("#pwd2").val()) {
			    alert("비밀번호가 일치하지 않습니다");
			    $("#pwd2").focus();
			    event.preventDefault();
			}
		});
		
		$('#adminId').keyup(function() {
			var data = $(this).val();

			if (validate_adminId(data) && data.length >= 5) {
				$.ajax({
					url : "<c:url value='/admin/dupAdminId'/>",
					type : 'GET',
					data : "adminId=" + data,
					success : function(res) {
						//alert(res);
						var output = "";
						if (res) {
							output = "사용 가능한 아이디";
							$('.dupmessageId').addClass('dupmessaget');
							$('.dupmessageId').removeClass('dupmessagef');
						} else {
							output = "이미 등록된 아이디";
							$('.dupmessageId').addClass('dupmessagef');
							$('.dupmessageId').removeClass('dupmessaget');
						}
						$('.dupmessageId').text(output);
					},
					error : function(xhr, status, error) {
						alert("dupmessageId:" + dupmessageId);
					}
				});
			} else {
				$('.dupmessageId').text('아이디 생성규칙에 어긋남 (다섯글자 이상)');
				$('.dupmessageId').addClass('dupmessagef');
				$('.dupmessageId').removeClass('dupmessaget');
			}
		});

		$('#pwd').keyup(function() {
			var pwd = $('#pwd').val();
			var pwd2 = $('#pwd2').val();
			
			if (pwd.length < 1) {
				$('.emptyPwd').text("필수 입력 사항");
				$('.emptyPwd').addClass('dupmessagef');
				$('.emptyPwd').removeClass('dupmessaget');
			}else if (pwd.length >= 1 && pwd2.length >= 1){
				if (pwd != pwd2) {
					$('.confirmPwd').text("비밀번호 불일치");
					$('.confirmPwd').addClass('dupmessagef');
					$('.confirmPwd').removeClass('dupmessaget');
				} else if (pwd == pwd2) {
					$('.confirmPwd').text("비밀번호 일치");
					$('.confirmPwd').addClass('dupmessaget');
					$('.confirmPwd').removeClass('dupmessagef');
				}
			}else if(pwd.length >= 1){
				$('.emptyPwd').text("");
			}
		});

		$('#pwd2').keyup(function() {
			var pwd = $('#pwd').val();
			var pwd2 = $('#pwd2').val();

			if (pwd2.length < 1) {
				$('.confirmPwd').text("필수 입력 사항");
				$('.confirmPwd').addClass('dupmessagef');
			} else if (pwd.length >= 1 && pwd2.length >= 1){
				if (pwd != pwd2) {
					$('.confirmPwd').text("비밀번호 불일치");
					$('.confirmPwd').addClass('dupmessagef');
					$('.confirmPwd').removeClass('dupmessaget');
				} else if (pwd == pwd2) {
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
							<li><a href="<c:url value='/admin/pdList'/>"><i
									class="fa fa-tasks"></i>게시글 관리<span class="notti_coun style-1">5</span></a></li>
							<li><a href="<c:url value='/admin/nonApprovalList'/>"><i
									class="fa fa-bookmark"></i>거래대기 목록<span
									class="notti_coun style-2">7</span></a></li>
							<li><a href="s<c:url value='/admin/subadminList'/>"><i class="fa fa-id-badge"></i>부서별 관리자 
							관리<span class="notti_coun style-3">3</span></a></li>
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
							<li><a href="<c:url value='/admin/email'/>"><i class="fa fa-envelope"></i></a></li>
							<li><a href="#"><i class="fa fa-cog"></i></a></li>
						</ul>
					</div>

				</div>
			</div>

			<div class="col-lg-9 col-md-8 col-sm-12">
				<div class="dashboard-body">
					<div class="dashboard-wraper">
						<!-- Basic Information -->
						<form name="frmsubAdmin" method="post" action="<c:url value='/admin/createAdmin' />">
							<fieldset>
								<div class="frm_submit_block">
									<h4>부서별 관리자 생성</h4>
									<div class="frm_submit_wrap">
										<div class="form-row">
											<div class="form-group col-md-6">
												<label>아이디</label> <input name="adminId" id="adminId"
													type="text" class="form-control" placeholder="ID" required
													autofocus />
											</div>
											<div class="form-group col-md-6" style="padding-top: 46px;">
												<span class="dupmessageId"></span>
											</div>
											<div class="form-group col-md-6">
												<label>비밀번호</label> <input name="adminPwd" type="text"
													class="form-control" placeholder="PWD" id="pwd">
											</div>
											<div class="form-group col-md-6" style="padding-top: 46px;">
												<span class="emptyPwd"></span>
											</div>
											<div class="form-group col-md-6">
												<label>비밀번호 확인</label> <input name="adminPwd2" type="text"
													class="form-control" placeholder="CONFIRM PWD" id="pwd2">
											</div>
											<div class="form-group col-md-6" style="padding-top: 46px;">
												<span class="confirmPwd"></span>
											</div>
										</div>
									</div>
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