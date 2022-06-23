<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ include file="../inc/top.jsp"%>
 
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />

<title>wonder - 자유게시판 글쓰기</title>
<c:if test="${empty sessionScope.userId}">
	<!-- 비회원, 관리자 로그인시 기능 차단?
	<script type="text/javascript">
		alert("일반회원만 이용가능합니다.");
		location.href= '<c:url value="/login/login"/>';
	</script>
	-->
</c:if>
<script type="text/javascript">
//jquerry작동안됨

</script>

<section>
	<div class="container">
		<div class="row">
			<form name="frmWrite" method="post" enctype="multipart/form-data"
				action="<c:url value='/board/write'/>">
<c:choose>
	<c:when test="${!empty sessionScope.adminId}">
		<input type="hidden" name="cateType" value="N" />
	</c:when>
	<c:otherwise>
	<!-- 회원은 한해 default("B"로 처리 -->
		<input type="hidden" name="cateType" value="B" />
	</c:otherwise>
</c:choose>


<input type="hidden" name="userId" value="testUser" />
<!--  input type="hidden" name="userId" value="${sessionScope.userId }" /-->
				<fieldset>
					<!-- Submit Form -->
					<div class="col-lg-12 col-md-12">

						<div class="submit-page p-0">

							<!-- Basic Information -->
							<div class="frm_submit_block">
								<h2>글쓰기</h2>
								<hr>
								<div class="frm_submit_wrap">
									<div class="form-row">

										<!--div class="form-group col-md-12"-->
										<div class="form-group col-md-7" id="">
											<label for="boardTitle">제목</label> <input type="text"
												class="form-control" name="boardTitle"
												id="boardTitle">
										</div>
										<div class="form-group col-md-4 box"></div>

										<div class="form-group col-md-4" id="">
											<label for="nickname">작성자</label> <input type="text"
												class="form-control" readonly="readonly" name="nickname"
												id="nickname" value="testuser">
											<!--value="${vo.nickname}"  -->
										</div>
										<div class="form-group col-md-7 box"></div>

										<div class="form-group col-md-4" id="">
											<label for="pwd">비밀번호</label> <input type="password"
												name="pwd" maxlength="4" class="form-control" id="pwd">
										</div>
										<div class="form-group col-md-7 box"></div>

										<div class="form-group col-md-5">
											<label for="upfile">첨부파일</label> <input type="file"
												id="upfile" name="upfile" class="form-control" />
										</div>
										<div class="form-group col-md-3" id="byte">
											<span>(최대 2MB)</span>
										</div>
									</div>

									<!-- Detailed Information -->
									<div class="frm_submit_block">
										<div class="frm_submit_wrap">
											<div class="form-row">
												<div class="form-group col-md-12" id="content">
													<label for="boardContent">내용</label>
													<textarea class="form-control ht-120" rows="50"
														cols="50" name="boardContent" id="boardContent"></textarea>
												</div>
											</div>
										</div>
									</div>

									<div class="form-group" id="submitlist">
										<div class="col-lg-12 col-md-12">
											<button class="btn btn-theme" type="submit">
												<i class="fas fa-edit"></i> 등록
											</button>
											<button class="btn btn-theme" type="button" id="btlist"
												onclick="location.href='<c:url value='/board/list'/>'">
												<span class="ti-view-list"></span> 목록
											</button>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</section>
<!-- ============================ Submit Property End ================================== -->


<%@ include file="../inc/bottom.jsp"%>
