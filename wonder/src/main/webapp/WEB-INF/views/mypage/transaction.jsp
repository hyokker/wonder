<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/mypage/incSide" />
<%-- <%@ include file="incSide.jsp" %> --%>
<script type="text/javascript">
function pageProc(curPage){
	$('input[name=currentPage]').val(curPage);
	$('form[name=frmPage]').submit();
}
</script>
<input type="hidden" id="pageCheck" value="transaction">

<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">

						
						<div class="col-lg-9 col-md-8 col-sm-12">
							<div class="dashboard-body">
							
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="_prt_filt_dash">
											<div class="_prt_filt_dash_flex">
											
											
    
												<div class="foot-news-last">
													<div class="input-group">
														<form name="frmSearch" method="post" 
													   		action='<c:url value="/mypage/transaction"/>'>
																<div class="input-group-append">
																<input type="text" class="form-control transSearch" name="searchKeyword" title="검색어 입력"
													        		value="${param.searchKeyword}" placeholder="상품명으로 검색">
													        	<input type="hidden" name="searchCondition"/ value="PD_TITLE">
																	<button type="submit" class="input-group-text theme-bg b-0 text-light"><i class="fas fa-search"></i></button>
																</div>
													    </form>
													</div>
												</div>
											</div>
											<div class="_prt_filt_dash_last m2_hide">
												<div class="_prt_filt_radius">
													
												</div>
												<div class="_prt_filt_add_new">
													<a href="<c:url value='/pd/pdList' />" class="greenLabel"><i class="fas fa-plus-circle"></i><span class="d-none d-lg-block d-md-block">　더 많은 상품 보러가기</span></a>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="dashboard_property">
											<div class="table-responsive">
												<table class="table">
													<thead class="thead-dark">
														<tr>
														  <th scope="col">상품명</th>
														  <th scope="col" class="m2_hide transactionTd center">조회수</th>
														  <th scope="col" class="m2_hide transactionTd center">작업기간</th>
														  <th scope="col" class="transactionTd center">상태</th>
														  <th scope="col" class="transactionTdIcon center">메세지</th>
														  <th scope="col" class="transactionTdIcon center">의뢰서</th>
														  <th scope="col" class="transactionTdIcon center">결제</th>
														</tr>
													</thead>
													<tbody>
													
													<c:choose>
														<c:when test="${fn:length(list) == 0 }" >
														 <td colspan="7">
														 	<br>
														 	<h5 class="noneList">거래내역이 없습니다</h5>
														 </td>
														</c:when>
														<c:otherwise>
															<c:forEach var="map" items="${list }">
																<!-- tr block -->
																<tr>
																	<td>
																		<a href="<c:url value='/pd/pdDetail?pdNo=${map.PD_NO }'/>" >
																			<div class="dash_prt_wrap">
																				<div class="dash_prt_thumb">
																					<img src="<c:url value='/img/pdupload/${map.FILE_NAME }' />" alt="거래 상품 사진" class="bookmarkImg">
																				</div>
																				<div class="dash_prt_caption">
																					<h5>${map.PD_TITLE }</h5>
																					<div class="prt_dashb_lot"><p>${map.INTRODUCTION }</p></div>
																					<div class="prt_dash_rate">
																						<span class="table-property-price">
																							<fmt:formatNumber value="${map.PRICE }" pattern="#,###" />
																							 원</span>
																					</div>
																				</div>
																			</div>
																		</a>
																	</td>
																	<td class="m2_hide transactionTd center">
																		<div class="prt_leads">
																			<span>
																				<fmt:formatNumber value="${map.READ_COUNT }" pattern="#,###" />
																			</span>
																		</div>
																	</td>
																	<td class="m2_hide transactionTd center">
																		<div class="_leads_posted"><h5>${map.PD_TERM }일 소요</h5></div>
																	</td>
																	<td class="center">
																		<c:if test="${map.PAY_FLAG=='N'}">
																			<div class="_leads_status"><span class="active">거래중</span></div>
																		</c:if>
																		<!-- 여기에 거래중 다른 조건 걸기 -->
																		<c:if test="${map.PAY_FLAG=='Y'}">
																			<div class="_leads_status"><span class="active">거래중</span></div>
																		</c:if>
																	</td>
																	<td class="center">
																		<div class="_leads_action">
																			<a href=""><i class="fas fa-envelope"></i></a>
																		</div>
																	</td>
																	<td class="center">
																		<div class="_leads_action">
																			<a href=""><i class="fas fa-edit"></i></a>
																		</div>
																	</td>
																	<td class="center">
																		<div class="_leads_action">
																			<a href=""><i class="fas fa-credit-card"></i></a>
																		</div>
																	</td>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
														
														
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- row -->
								
								<div class="col-lg-12 col-md-12 col-sm-12">
										<ul class="pagination p-center">
											<c:if test="${pagingInfo.firstPage>1}">
												<li class="page-item"><a class="page-link" href=""
													aria-label="Previous" onclick="pageProc(${pagingInfo.firstPage-1})">
														<span class="ti-arrow-left"></span> <span class="sr-only">Previous</span>
												</a></li>
											</c:if>
											<c:forEach var="i" begin="${pagingInfo.firstPage}"
												end="${pagingInfo.lastPage}">
												<c:if test="${i==pagingInfo.currentPage}">
													<li class="page-item active"><a class="page-link" href="">${i}
													</a></li>
												</c:if>
												<c:if test="${i!=pagingInfo.currentPage}">
													<li class="page-item"><a class="page-link" href=""
														onclick="pageProc(${i })">${i} </a></li>
												</c:if>
											</c:forEach>
											<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage}">
												<li class="page-item"><a class="page-link" href=""
													aria-label="Next" onclick="pageProc(${pagingInfo.lastPage+1})">
														<span class="ti-arrow-right"></span> <span class="sr-only">Next</span>
												</a></li>
											</c:if>
										</ul>
									</div>
							
							<form action="<c:url value='/mypage/transaction'/>" 
								method="post" name="frmPage">
								<input type="text" name="searchKeyword" value="${param.searchKeyword }">
								<input type="text" name="searchCondition" 
									value="${param.searchCondition }">
								<input type="text" name="currentPage" >	
							</form>
									<!-- Modal C -->
								   <div class="modal fade modalC" data-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1" id="modalC">
								     <div class="modal-dialog modal-lg modal-dialog-centered">
								       <div class="modal-content">
								         <div class="modal-header" style="margin: 0 auto; border-bottom: 3px solid #27ae60;">
								           <h5 class="modal-title" id="exampleModalToggleLabel">의뢰서</h5>
								           <span class="mod-close" data-dismiss="modal" aria-hidden="true" style="border-radius: 50%;"><i class="ti-close"></i></span>
								         </div>
								         <div class="modal-body">
								            <c:import url="/pd/formConfirm">
								               <c:param name="userId" value="${userId }"></c:param>
								               <c:param name="pdNo" value="${pdVo.pdNo }"></c:param>
								            </c:import>
								         </div>
								         <div class="modal-footer d-flex justify-content-center">
								            <button type="button" class="btn theme-bg rounded" data-dismiss="modal">확인</button>
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
			
			<!-- ============================ Call To Action ================================== -->

			
			
			
<%@ include file="../inc/bottom.jsp" %>