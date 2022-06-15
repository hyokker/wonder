<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp" %>
<script src="<c:url value='/js/jquery.nice-select.js' />"></script>
<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">
<link href="<c:url value='/css/nice-select.css' />" rel="stylesheet">
<script type="text/javascript">
	$(function(){
		$('#submitBt').click(function(){
			if(!confirm('정보를 수정하시겠습니까?')){
				return false;
			}
		});
		
		if(${vo.type=='일반회원'}){
			$('.form-row div').hide();
			$('.generalMember').show();
		}
		
		$('select').niceSelect();
	});
</script>

			<!-- ============================================================== -->
			<!-- Top header  -->
			<!-- ============================================================== -->
			
			<!-- ============================ Page Title Start================================== -->
			<div class="page-title" style="background:#f4f4f4 url(<c:url value='/img/mypage/mypage_banner.jpg' />);" data-overlay="5">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							
							<div class="breadcrumbs-wrap">
								<ol class="breadcrumb">
									<li class="breadcrumb-item active" aria-current="page">반갑습니다</li>
								</ol>
								<h2 class="breadcrumb-title">${vo.userId }님의 개인페이지입니다</h2>
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
									<img src="<c:url value='/img/mypage/default_profile.png' />" class="img-fluid avater" alt="">
									<h4>${userId }</h4>
									<span>${vo.email }</span>
								</div>
								
								<div class="dash_user_menues">
									<ul>
										<li><a href="<c:url value='/mypage/dashboard' />"><i class="fa fa-tachometer-alt"></i>대시보드<span class="notti_coun style-1">4</span></a></li>
										<li class="active"><a href="<c:url value='/mypage/profile' />"><i class="fa fa-user-tie"></i>내 정보</a></li>
										<li><a href="<c:url value='/mypage/bookmark' />"><i class="fa fa-bookmark"></i>찜해둔 상품<span class="notti_coun style-2">7</span></a></li>
										<li><a href="<c:url value='/mypage/transaction' />"><i class="fa fa-tasks"></i>거래내역</a></li>
										<li><a href="<c:url value='/mypage/chatting' />"><i class="fa fa-envelope"></i>채팅<span class="notti_coun style-3">3</span></a></li>
										<li><a href="<c:url value='/mypage/changePwd' />"><i class="fa fa-unlock-alt"></i>암호변경</a></li>
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
									<form name="frmProfile" method="post" action="<c:url value='/mypage/profile' />">
								
									<!-- Basic Information -->
									<div class="frm_submit_block">	
										<h4>나의 계정 정보</h4>
										<div class="frm_submit_wrap">
											<div class="form-row"> <!-- 기준디브 -->
											
												<div class="form-group col-md-6 generalMember">
													<label>이름</label>
													<input type="text" class="form-control profile_disabled" value="${vo.name }" disabled="disabled">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>가입일</label>
													<input type="text" class="form-control profile_disabled" 
														value="<fmt:formatDate value="${vo.regdate }" pattern="yyyy년 MM월 dd일" />" disabled="disabled">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>회원분류</label>
													<input type="text" class="form-control profile_disabled" value=
														<c:if test="${vo.type=='일반회원' }">
															"일반회원"
														</c:if>
													 disabled="disabled">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>이메일</label>
													<input type="email" class="form-control" name="email" value="${vo.email }">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>닉네임</label>
													<input type="text" class="form-control" name="nickname" value="${vo.nickname }">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>연락처</label>
													<input type="text" class="form-control" name="tel" value="${vo.tel }">
												</div>
												

												
												<div class="form-group col-md-6">
													<label>전공</label>
													<input type="text" class="form-control" value="컴퓨터공학과">
												</div>
												
												<div class="form-group col-md-6">
													<label>학력</label>
													<input type="text" class="form-control" value="이젠대학교 공학석사">
												</div> 
												
												<div class="form-group col-md-6">
													<label>은행명</label>
													<input type="text" class="form-control" value="하나은행">
												</div> 
												
												<div class="form-group col-md-6">
													<label>계좌번호</label>
													<input type="text" class="form-control" value="395-111111-11111">
												</div> 
												
												<div class="form-group col-md-12">
													<label>보유 자격증</label>
													<input type="text" class="form-control" value="정보처리기사">
												</div> 
												
												<div class="form-group col-md-6">
													<label>완료된 작업 건수</label>
													<input type="text" class="form-control profile_disabled" value="13건" disabled="disabled">
												</div> 
												
												<div class="form-group col-md-4">
													<label>개발 경력</label>
													<select id="bage" class="form-control">
														<option value="">경력을 선택하세요</option>
														<option value="1">0 - 1년</option>
														<option value="2" selected="selected">1 - 3년</option>
														<option value="3">3 - 5년</option>
														<option value="4">5 - 10년</option>
														<option value="5">10년+</option>
													</select>
												</div>
												
												<div class="form-group col-md-12">
													<label>개발 가능 언어</label>
													<div class="o-features">
														<ul class="no-ul-list third-row">
															<li>
																<input id="a-1" class="checkbox-custom" name="a-1" type="checkbox">
																<label for="a-1" class="checkbox-custom-label">C</label>
															</li>
															<li>
																<input id="a-2" class="checkbox-custom" name="a-2" type="checkbox">
																<label for="a-2" class="checkbox-custom-label">C#</label>
															</li>
															<li>
																<input id="a-3" class="checkbox-custom" name="a-3" type="checkbox">
																<label for="a-3" class="checkbox-custom-label">C++</label>
															</li>
															<li>
																<input id="a-4" class="checkbox-custom" name="a-4" type="checkbox" checked="checked">
																<label for="a-4" class="checkbox-custom-label">CSS</label>
															</li>
															<li>
																<input id="a-5" class="checkbox-custom" name="a-5" type="checkbox" checked="checked">
																<label for="a-5" class="checkbox-custom-label">HTML</label>
															</li>
															<li>
																<input id="a-6" class="checkbox-custom" name="a-6" type="checkbox" checked="checked">
																<label for="a-6" class="checkbox-custom-label">Java</label>
															</li>
															<li>
																<input id="a-7" class="checkbox-custom" name="a-7" type="checkbox" checked="checked">
																<label for="a-7" class="checkbox-custom-label">JavaScript</label>
															</li>
															<li>
																<input id="a-8" class="checkbox-custom" name="a-8" type="checkbox" checked="checked">
																<label for="a-8" class="checkbox-custom-label">JSP</label>
															</li>
															<li>
																<input id="a-9" class="checkbox-custom" name="a-9" type="checkbox">
																<label for="a-9" class="checkbox-custom-label">Lua</label>
															</li>
															<li>
																<input id="a-10" class="checkbox-custom" name="a-10" type="checkbox">
																<label for="a-10" class="checkbox-custom-label">Node.js</label>
															</li>
															<li>
																<input id="a-11" class="checkbox-custom" name="a-11" type="checkbox" checked="checked">
																<label for="a-11" class="checkbox-custom-label">Spring</label>
															</li>
															<li>
																<input id="a-12" class="checkbox-custom" name="a-12" type="checkbox">
																<label for="a-12" class="checkbox-custom-label">Vue.js</label>
															</li>
														</ul>
													</div>
												</div>
												<div class="form-group col-md-12">
													<label>소개</label>
													<textarea class="form-control">무조건 남보다 나은 결과물과 서비스를 제공하는것이 저의 목표입니다.

우수한 퀄리티와 다양한 기능을 개발하여 합리적인 금액으로 납품해드리고있습니다 
사후 서비스까지 책임지는 저에게 맡겨주세요</textarea>
												</div>	
											</div>
										</div>
									</div>
									
									<div class="frm_submit_block">	
										<!-- <h4>Social Accounts</h4> -->
										<div class="frm_submit_wrap">
											<div class="form-row">
											
												<!-- <div class="form-group col-md-6">
													<label>Facebook</label>
													<input type="text" class="form-control" value="https://facebook.com/">
												</div>
												
												<div class="form-group col-md-6">
													<label>Twitter</label>
													<input type="email" class="form-control" value="https://twitter.com/">
												</div>
												
												<div class="form-group col-md-6">
													<label>Google Plus</label>
													<input type="text" class="form-control" value="https://googleplus.com">
												</div>
												
												<div class="form-group col-md-6">
													<label>LinkedIn</label>
													<input type="text" class="form-control" value="https://linkedin.com/">
												</div> -->
												
												<div class="form-group col-lg-12 col-md-12 mt-4 generalMember">
													<button class="btn btn-theme btn-lg " type="submit" id="submitBt">변경사항 적용</button>
												</div>
												
											</div>
										</div>
									</div>
									</form>
								</div>
							
							</div>
						</div>
						
						<input type="button" value="일반회원"/>
						<input type="button" value="전문가"/>
					</div>
				</div>
			</section>
			<!-- ============================ User Dashboard End ================================== -->
			

			
<%@ include file="../inc/bottom.jsp" %>