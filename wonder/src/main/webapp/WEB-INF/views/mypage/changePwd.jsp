<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/mypage/incSide" />
<%-- <%@ include file="incSide.jsp" %> --%>
<input type="hidden" id="pageCheck" value="changePwd">

<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">

						
						<div class="col-lg-9 col-md-8">
							<div class="dashboard-body">
							
								<div class="dashboard-wraper">
								
									<!-- Basic Information -->
									<div class="frm_submit_block">	
										<h4>암호 변경</h4>
										<div class="frm_submit_wrap">
											<div class="form-row">
											
												<div class="form-group col-lg-12 col-md-6">
													<label>이전 비밀번호</label>
													<input type="password" class="form-control">
												</div>
												
												<div class="form-group col-md-6">
													<label>새로운 비밀번호</label>
													<input type="password" class="form-control">
												</div>
												
												<div class="form-group col-md-6">
													<label>새로운 비밀번호 확인</label>
													<input type="password" class="form-control">
												</div>
												
												<div class="form-group col-lg-12 col-md-12">
													<button class="btn btn-theme" type="submit">비밀번호 변경하기</button>
												</div>
												
											</div>
										</div>
									</div>
									
								</div>
							
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- ============================ User Dashboard End ================================== -->

			
<%@ include file="../inc/bottom.jsp" %>