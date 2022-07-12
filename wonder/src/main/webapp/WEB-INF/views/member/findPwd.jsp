<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script type="text/javascript">
			$(function(){
				$('#findPwd').click(function() {
					if ($.trim($('#userId').val()).length < 1) {
						alert("아이디를 입력해주세요");
						$('#userId').focus();
						event.preventDefault();
					} else if ($.trim($('#name').val()).length < 1) {
						alert("이름을 입력해주세요");
						$('#name').focus();
						event.preventDefault();
					} else if ($.trim($('#email').val()).length < 1) {
						alert("이메일을 입력해주세요");
						$('#email').focus();
						event.preventDefault();
					} else{
						var userId = $('#userId').val();
						var name = $('#name').val();
						var email = $('#email').val();
						
						$.ajax({
							url: "<c:url value='/member/ajaxFindPwd'/>",
							type:"GET",
							data:{
								userId:userId,
								name:name,
								email:email
							},
							async:false,
							success:function(data){
								if(data==0){
									alert('사용자의 정보와 일치하는 계정이 없습니다.');
									
								}else if(data==1){
									var num = Math.floor(Math.random() * 10000)+1;
									$.ajax({
										url: "<c:url value='/email/pwdEmail'/>",
										type:"GET",
										data:{
											pwd:num,
											receiver:email
										},
										async:false,
										success:function(data){
											if(data==0){
												alert('이메일 발송이 실패했습니다');
											}else if(data==1){
												alert('회원님의 이메일로 임시비밀번호가 발송되었습니다.');
												alert('로그인 후 꼭 비밀번호를 변경하세요!');
											}
										},
										error:function(){
											alert('ajax 오류');
										}
									});
								}
							},
							error:function(){
								alert('ajax 오류');
							}
						});
					}
				});
			});
			function closePwd() {
				
				self.close();
			}
		</script>
</head>
<body>
	<section class="gray pt-5 pb-5" style="text-align: center;">
<div class="col-lg-9 col-md-8" style="text-align: center">
<div class="dashboard-body">
	<div class="dashboard-wraper">
		<!-- Basic Information -->
		<div class="frm_submit_block">
			<h4>비밀번호 찾기</h4>
						<div class="frm_submit_wrap">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>아이디</label> <input type="text" name="userId"
										id="userId" class="form-control">
								</div>

								<div class="form-group col-md-6">
									<label>이름 </label> <input type="text" name="name" id="name"
										class="form-control">
								</div>
								<div class="form-group col-md-6">
									<label>이메일</label> <input type="text" name="email" id="email"
										class="form-control">
								</div>

								<div class="form-group col-lg-12 col-md-12">
									<button class="btn btn-theme" type="submit" id="findPwd">찾기</button>
									<button class="btn btn-theme" onclick="closePwd()">닫기</button>
								</div>
				</div>
			</div>
		</div>

	</div>


</section>
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/js/select2.min.js'"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slick.js"></script>
<script src="${pageContext.request.contextPath}/js/slider-bg.js"></script>
<script src="${pageContext.request.contextPath}/js/lightbox.js"></script>
<script src="${pageContext.request.contextPath}/js/imagesloaded.js"></script>
<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

<!-- Date Booking Script -->
<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>

<!-- 대시보드 js -->
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath}/js/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/js/morris.min.js"></script>

<!-- Custom Morrisjs JavaScript -->
<script src="${pageContext.request.contextPath}/js/morris.js"></script>

<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>
</html>