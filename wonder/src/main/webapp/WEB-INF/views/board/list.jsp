<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
/*  
 * hover
 */
  
//페이지 번호 클릭시 실행
 function pageProc(currentPage){
	$('input[name=?]').val(currentPage);
	$('form[name=?]').submit();
}

</script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>" />
<title>wonder - 자유게시판</title>

<!-- ============================ Page Title Start================================== -->

<!-- ============================ Page Title End ================================== -->

<!-- ============================ User Dashboard ================================== -->
<section class="gray pt-5 pb-5">
<h2>&nbsp;자유게시판</h2>
<hr>
	<div class="container-fluid">

		<div class="row">

			<div class="col-lg-9 col-md-8 col-sm-12">
				<div class="dashboard-body">

					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="dashboard_property">
								<div class="table-responsive">
									<table class="table">
										<colgroup>
											<col style="width:10%;" />
											<col style="width:50%;" />
											<col style="width:15%;" />
											<col style="width:15%;" />
											<col style="width:10%;" />		
										</colgroup>
										<thead class="thead-dark">
											<tr>
												<th scope="col" class="m2_hide">번호</th>
												<th scope="col">제목</th>
												<th scope="col" class="m2_hide">작성자</th>
												<th scope="col" class="m2_hide">날짜</th>
												<th scope="col">조회수</th>
											</tr>
										</thead>
										<tbody>
										<!--  
											<c:if test="${empty list }">
												<tr>
													<td colspan="5" class="">게시글이 존재하지 않습니다.</td>
												</tr>
											</c:if>
										-->
											<!-- tr block -->
											<tr>
											<td class="m2_hide">
													<div class="prt_leads">
														<span>1</span>
													</div>
												</td>
												<td>
													<div class="dash_prt_wrap">
														
														<div class="dash_prt_caption">
															<div class="prt_dash_rate">
																<span>1번 게시글</span>
																<span class="new">new</span>	
															</div>
														</div>
													</div>
												</td>
												
												<td class="m2_hide">
													<div class="_leads_view">
														<h5 class="up">1번글쓴이</h5>
													</div>
												</td>
												<td class="m2_hide">
													<div class="_leads_posted">
														<h5>2022-06-15</h5>
				<!-- fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd" -->
													</div>
												</td>
												<td>
													<div class="_leads_view_title">
														<span>56</span>
													</div>
												</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- divSearch -->
					<div class="divSearch">
						<form name="frmSearch" method="post"
							action='<c:url value="/reBoard/list.do"/>'>
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="_prt_filt_dash">
										<div class="_prt_filt_dash_flex">
											<div class="foot-news-last">
												<div class="form-group col-md-4">
													<select name="searchCondition" class="form-control">
														<option value="title" 
											            	<c:if test="${param.searchCondition=='title' }">
											            		selected="selected"
											            	</c:if>
											            >제목</option>
											            <option value="content" 
											            	<c:if test="${param.searchCondition=='content' }">
											            		selected="selected"
											            	</c:if>
											            >내용</option>
											            <option value="name" 
											            	<c:if test="${param.searchCondition=='name' }">
											            		selected="selected"
											            	</c:if>
											            >작성자</option>
													</select>
												</div>
												<div class="form-group col-md-1"></div>
												<div class="input-group">
													<input type="text" class="form-control"
														placeholder="검색어 입력" >
													<div class="input-group-append">
														<span type="button"
															class="input-group-text theme-bg b-0 text-light"><i
															class="fas fa-search"></i></span>
													</div>
												</div>
											</div>
										</div>
										<div class="_prt_filt_dash_last m2_hide">
											<div class="_prt_filt_radius"></div>
											<div class="_prt_filt_add_new">
												<a href="<c:url value="/board/write"/>"
													class="prt_submit_link"><i class="fas fa-edit"></i><span
													class="d-none d-lg-block d-md-block">글쓰기</span></a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12">
							<ul class="pagination p-center">
								<li class="page-item">
								  <a class="page-link" href="#" aria-label="Previous">
									<span class="ti-arrow-left"></span>
									<span class="sr-only">Previous</span>
								  </a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item active"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">...</a></li>
								<li class="page-item"><a class="page-link" href="#">18</a></li>
								<li class="page-item">
								  <a class="page-link" href="#" aria-label="Next">
									<span class="ti-arrow-right"></span>
									<span class="sr-only">Next</span>
								  </a>
								</li>
							</ul>
						</div>
							</div>
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>
</section>
<!-- ============================ User Dashboard End ================================== -->


<%@ include file="../inc/bottom.jsp"%>
