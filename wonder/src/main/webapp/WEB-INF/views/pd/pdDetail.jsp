<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pdDetail.css">

<!-- slick -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- starRating -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Gallery + profile -->
<section class="gallery_parts pt-2 pb-2 d-none d-sm-none d-md-none d-lg-none d-xl-block">
	<div class="container">
		<div class="row align-items-center">
			<!-- Gallery -->
			<div class="col-lg-8 col-md-7 col-sm-12">
				<div class="mySlick">
			        <div><img src="https://d2v80xjmx68n4w.cloudfront.net/gigs/Zq4Ky1648784180.jpg" class="img-fluid mx-auto" alt="" /></div>
			        <div><img src="https://d2v80xjmx68n4w.cloudfront.net/gigs/Zq4Ky1648784180.jpg" class="img-fluid mx-auto" alt="" /></div>
			        <div><img src="https://d2v80xjmx68n4w.cloudfront.net/gigs/Zq4Ky1648784180.jpg" class="img-fluid mx-auto" alt="" /></div>
			        <!-- <div><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></div> -->
			    </div>
			</div>
			<!-- profile -->
			<div class="col-lg-4 col-md-4 col-sm-12" id="profile">
				<div class="property_dashboard_navbar" style="padding: 0;">
					<div class="dash_user_avater">
						<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA3MzBfMjUg%2FMDAxNTY0NDc0OTg4ODMy.ZqJOHVWgvIAFFRC0OX65wGbyV2jXpX3FKcBHW760XDYg.UII4II2u9MVQej__czZINBtV3pLo_Caxqf3MGjon2l8g.JPEG.thejoeunart%2F%25BF%25BB%25B7%25CE%25BF%25EC%25BE%25C6%25C0%25CC%25B5%25F0.jpg&type=sc960_832" class="img-fluid avater" alt="">
						<h4>${expertVo.nickname }</h4>
					</div>
					
					<div class="dash_user_menues">
						<ul>
							<li><i class="fa fa-clock" style="font-size: large;margin-right: 10px;"></i>연락 가능 시간: ${expertVo.servicableTime }</li>
							<li><i class="fa fa-check" style="font-size: large;margin-right: 10px;"></i>총 작업개수: ${expertVo.workAmount }개</li>
							<li><i class="fa fa-address-book" style="font-size: large;margin-right: 10px;"></i>소개</li>
							<li style="padding: 0 25px">${expertVo.introduction }</li>
						</ul>
					</div>
					
					<div class="dash_user_footer">
						<ul>
							<li style="margin: 0 auto"><a href="#">MORE</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- content -->
<section class="pt-4">
				<div class="container">
					<div class="row">
						<!-- leftSide -->
						<div class="col-lg-8 col-md-12 col-sm-12">
							<!-- title -->
							<div class="property_info_detail_wrap mb-4">
								<div class="property_info_detail_wrap_first">
									<div class="pr-price-into">
										<h2>${pdVo.pdTitle }</h2>
									</div>
								</div>
								<div class="property_detail_section">
									<div class="prt-sect-pric">
										<ul class="_share_lists">
											<li><a href="#"><i class="fa fa-heart" style="color: red"></i></a></li>
											<li style="padding-left: 5px">찜하기</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- language -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">개발 언어</h4>
								</div>
								<div class="block-body">
									<ul class="avl-features third">
									<c:forEach var="lang" items="${fn:split(pdVo.lang, ',') }">
										<li class="active">${lang }</li>
									</c:forEach>
									<c:forEach var="frame" items="${fn:split(pdVo.frame, ',') }">
										<li class="active">${frame }</li>
									</c:forEach>
									</ul>
								</div>
							</div>
							<!-- detail -->
							<div class="property_block_wrap">
								<!-- detail header -->
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">상세 설명</h4>
								</div>
								<!-- detail body -->
								<div class="block-body">
									<!-- detail menu -->
									<ul class="nav nav-tabs floor_plans" id="myTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="buy-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">전체보기</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="0bed-tab" data-toggle="tab" href="#0bed" role="tab" aria-controls="0bed" aria-selected="false">서비스설명</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="1bed-tab" data-toggle="tab" href="#1bed" role="tab" aria-controls="1bed" aria-selected="false">가격정보</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="2bed-tab" data-toggle="tab" href="#2bed" role="tab" aria-controls="2bed" aria-selected="false">수정 / 재진행</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="studio-tab" data-toggle="tab" href="#studio" role="tab" aria-controls="studio" aria-selected="false">취소 / 환불</a>
										</li>
									</ul>
									<!-- detail content -->
									<div class="tab-content" id="myTabContent">
										<!-- All Tabs -->
										<div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
											<!-- tab 1 -->
											<div class="table-responsive">
												<h5>서비스설명</h5>
												<c:forEach var="detailVo" items="${list }">
													<p>${detailVo.serviceExplanation }</p>
												</c:forEach>
											</div>
											
											<!-- tab 2 -->
											<div class="table-responsive">
												<div class="pricing packages_style_5">
											<h5>가격 정보</h5>
												<div class="row">
													<div class="col-lg-3 text-center d-lg-block d-md-none d-sm-none d-none">
														<ul>
															<li class="pricingTitle">
																<span></span>
															</li>
															<li>
																<span>가격</span>
															</li>
															<li>
																<span>상업적 이용</span>
															</li>
															<li>
																<span>맞춤 디자인 제공</span>
															</li>
															<li>
																<span>소스 코드 제공</span>
															</li>
															<li>
																<span>결제 기능</span>
															</li>
															<li>
																<span>수정 횟수</span>
															</li>
															<li>
																<span>작업일</span>
															</li>
														</ul>
													</div>
													<c:forEach var="detailVo" items="${list }">
														<div class="col-lg-3 col-md-4 col-sm-12 text-center">
															<ul>
																<li class="pricingTitle">
																	${detailVo.pdType }
																	<span class="show-mb"></span>
																</li>
																<li>
																	<fmt:formatNumber value="${detailVo.pdPrice }" pattern="#,###"/>원
																</li>
																<li>
																	<c:if test="${detailVo.commercial == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.commercial == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	<c:if test="${detailVo.customize == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.customize == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	<c:if test="${detailVo.codeSupply == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.codeSupply == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	<c:if test="${detailVo.payment == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.payment == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	${detailVo.editCount }회
																</li>
																<li>
																	${detailVo.pdPrice }일
																</li>
															</ul>
														</div>
													</c:forEach>
												</div>
												
						                    </div>
											</div>

											<!-- tab 3 -->
											<div class="table-responsive">
												<h5>수정 및 재진행</h5>
												<c:forEach var="detailVo" items="${list }">
													<p>${detailVo.editExplanation}</p>
												</c:forEach>
											</div>
											
											<!-- tab 4 -->
											<div class="table-responsive">
												<h5>취소 및 환불 규정</h5>
												<p>가. 기본 환불 규정</p>
												<p>1. 전문가와 의뢰인의 상호 협의하에 청약 철회 및 환불이 가능합니다.</p>
												<p>2. 작업이 완료된 이후 또는 자료, 프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다.</p>
												<p>( 소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조 제5호의 디지털콘텐츠의 제공이 </p>
												<p>개시된 경우에 해당)</p>
												<p>나. 전문가 책임 사유</p>
												<p>1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 </p>
												<p>결제금액 전체 환불이 가능합니다.</p>
												<p>다. 의뢰인 책임 사유</p>
												<p>1. 서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금</p>
												<p>액의 10%를 공제하여 환불합니다.</p>
												<p>총 작업량의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액</p>
												<p>총 작업량의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액</p>
												<p>총 작업량의 1/2 경과 후 : 반환하지 않음</p>
											</div>
											
										</div>
										<!-- tabs 1 -->
										<div class="tab-pane fade" id="0bed" role="tabpanel" aria-labelledby="0bed-tab">
											<h5>서비스설명</h5>
											<c:forEach var="detailVo" items="${list }">
												<p>${detailVo.serviceExplanation }</p>
											</c:forEach>
										</div>
										<!-- tabs 2 -->
										<div class="tab-pane fade" id="1bed" role="tabpanel" aria-labelledby="1bed-tab">
											<div class="pricing packages_style_5">
											<h5>가격 정보</h5>
												<div class="row">
													<div class="col-lg-3 text-center d-lg-block d-md-none d-sm-none d-none">
														<ul>
															<li class="pricingTitle">
																<span></span>
															</li>
															<li>
																<span>가격</span>
															</li>
															<li>
																<span>상업적 이용</span>
															</li>
															<li>
																<span>맞춤 디자인 제공</span>
															</li>
															<li>
																<span>소스 코드 제공</span>
															</li>
															<li>
																<span>결제 기능</span>
															</li>
															<li>
																<span>수정 횟수</span>
															</li>
															<li>
																<span>작업일</span>
															</li>
														</ul>
													</div>
													<c:forEach var="detailVo" items="${list }">
														<div class="col-lg-3 col-md-4 col-sm-12 text-center">
															<ul>
																<li class="pricingTitle">
																	${detailVo.pdType }
																	<span class="show-mb"></span>
																</li>
																<li>
																	<fmt:formatNumber value="${detailVo.pdPrice }" pattern="#,###"/>원
																</li>
																<li>
																	<c:if test="${detailVo.commercial == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.commercial == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	<c:if test="${detailVo.customize == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.customize == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	<c:if test="${detailVo.codeSupply == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.codeSupply == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	<c:if test="${detailVo.payment == 'Y' }">
																		<div class="checkmark"></div>
																	</c:if>
																	<c:if test="${detailVo.payment == 'N' }">
																		<div class="crossmark"></div>
																	</c:if>
																</li>
																<li>
																	${detailVo.editCount }회
																</li>
																<li>
																	${detailVo.pdPrice }일
																</li>
															</ul>
														</div>
													</c:forEach>
												</div>
												
						                    </div>
										</div>
										<!-- tabs 3 -->
										<div class="tab-pane fade" id="2bed" role="tabpanel" aria-labelledby="2bed-tab">
											<h5>수정 및 재진행</h5>
											<c:forEach var="detailVo" items="${list }">
												<p>${detailVo.editExplanation}</p>
											</c:forEach>
										</div>
										<!-- tabs 4 -->
										<div class="tab-pane fade" id="studio" role="tabpanel" aria-labelledby="studio-tab">
											<h5>취소 및 환불 규정</h5>
											<p>가. 기본 환불 규정</p>
											<p>1. 전문가와 의뢰인의 상호 협의하에 청약 철회 및 환불이 가능합니다.</p>
											<p>2. 작업이 완료된 이후 또는 자료, 프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다.</p>
											<p>( 소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조 제5호의 디지털콘텐츠의 제공이 </p>
											<p>개시된 경우에 해당)</p>
											<p>나. 전문가 책임 사유</p>
											<p>1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 </p>
											<p>결제금액 전체 환불이 가능합니다.</p>
											<p>다. 의뢰인 책임 사유</p>
											<p>1. 서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금</p>
											<p>액의 10%를 공제하여 환불합니다.</p>
											<p>총 작업량의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액</p>
											<p>총 작업량의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액</p>
											<p>총 작업량의 1/2 경과 후 : 반환하지 않음</p>
										</div>
									</div>
								</div>
								
							</div>
							<!-- review -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">리뷰</h4>
								</div>
								<!-- star percentage -->
								<div class="block-body">
									<div class="rating-overview">
										<span class="avgScore">AvgScore</span>
										<div class="rating-overview-box">
											<div class="rating">
											    <span class="rating-upper" style="width: ${map['AVGSCORE'] * 20}%">
											        <span>★</span>
											        <span>★</span>
											        <span>★</span>
											        <span>★</span>
											        <span>★</span>
											    </span>
											    <span class="rating-lower">
											        <span>★</span>
											        <span>★</span>
											        <span>★</span>
											        <span>★</span>
											        <span>★</span>
											    </span>
											</div>
										</div>
										<span class="bigScore"><fmt:formatNumber value="${map['AVGSCORE'] }" pattern="#.##" /></span>
										<span style="margin: 12px 0 0 15px">out of 5.0 (${map['TOTAL'] }개)</span>
									</div>
							
									<div class="author-review">
										<div class="comment-list">
											<ul>
												<c:forEach var="reviewVo" items="${reviewList }" varStatus="status">
													<li class="article_comments_wrap 
													<c:if test="${status.index > 2 }">
														more_review
													</c:if>
													">
														<article>
															<div class="comment-details">
																<div class="comment-meta">
																	<div class="comment-left-meta">
																		<h4 class="author-name">${reviewVo.userId }</h4>
																		<div class="comment-date">${reviewVo.regdate }</div>
																		<div class="rating" style="font-size: 15px;top: -5px">
																			<span class="rating-upper" style="width: ${reviewVo.rating * 20 }%">
																		        <span>★</span>
																		        <span>★</span>
																		        <span>★</span>
																		        <span>★</span>
																		        <span>★</span>
																		    </span>
																		    <span class="rating-lower">
																		        <span>★</span>
																		        <span>★</span>
																		        <span>★</span>
																		        <span>★</span>
																		        <span>★</span>
																		    </span>
																		</div>
																		<span>${reviewVo.rating }</span>
																	</div>
																</div>
																<div class="comment-text" style="margin: 0">
																	<p>${reviewVo.reviewTitle }</p>
																	<p>${reviewVo.reviewContent }</p>
																</div>
															</div>
														</article>
													</li>
												</c:forEach>
												<!-- 나머지 리뷰 -->
											</ul>
										</div>
									</div>
									<a href="#more" class="reviews-checked">리뷰 더 보기</a>
								</div>
							</div>
							<!-- write review -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">리뷰 작성</h4>
								</div>
								
								<div class="block-body">
								  <form name="frm" method="post" action="<c:url value='/pd/review'/>">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>Ratting</label>
												<div id="half-stars-example">
												    <div class="rating-group">
												    	<input type="radio" disabled="disabled">
												        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating" id="rating2-05" value="0.5" type="radio">
												        <label aria-label="1 star" class="rating__label" for="rating2-10"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating" id="rating2-10" value="1" type="radio">
												        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating" id="rating2-15" value="1.5" type="radio">
												        <label aria-label="2 stars" class="rating__label" for="rating2-20"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating" id="rating2-20" value="2" type="radio">
												        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating" id="rating2-25" value="2.5" type="radio" checked>
												        <label aria-label="3 stars" class="rating__label" for="rating2-30"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating" id="rating2-30" value="3" type="radio">
												        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating" id="rating2-35" value="3.5" type="radio">
												        <label aria-label="4 stars" class="rating__label" for="rating2-40"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating" id="rating2-40" value="4" type="radio">
												        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating" id="rating2-45" value="4.5" type="radio">
												        <label aria-label="5 stars" class="rating__label" for="rating2-50"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating" id="rating2-50" value="5" type="radio">
												    </div>
												</div>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>제목</label>
												<input type="text" class="form-control" name="reviewTitle">
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>내용</label>
												<textarea class="form-control ht-80" name="reviewContent"></textarea>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<button class="btn theme-bg rounded" type="submit">등록</button>
												<input type="hidden" value="${param.pdNo }" name="pdNo">
											</div>
										</div>
									</div>
								  </form>
								</div>
								
							</div>
						
						</div>
						
						<!-- sidebar -->	
						<div class="col-lg-4 col-md-12 col-sm-12">
							<div class="property-sidebar side_stiky">
																
								<div class="sider_blocks_wrap shadows">
									<div class="sidetab-content">
										<div class="faq_wrap">
											<div class="faq_wrap_body mb-5">
												<div class="accordion" id="generalac">
													<c:forEach var="detailVo" items="${list }" varStatus="status">
														<div class="card">
															<div class="card-header" 
															<c:if test="${status.index == 0}">id="headingOne"</c:if>
															<c:if test="${status.index == 1}">id="headingTwo"</c:if>
															<c:if test="${status.index == 2}">id="headingThree"</c:if>
															>
															  <h2 class="mb-0">
															  	<c:if test="${status.index == 0}">
																	<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
																</c:if>
															  	<c:if test="${status.index == 1}">
																	<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																</c:if>
															  	<c:if test="${status.index == 2}">
																	<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																</c:if>
																	${detailVo.pdType }
																</button>
															  </h2>
															</div>
															<c:if test="${status.index == 0}">
																<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#generalac">
															</c:if>
															<c:if test="${status.index == 1}">
																<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#generalac">
															</c:if>
															<c:if test="${status.index == 2}">
																<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#generalac">
															</c:if>
																<div class="pricing_wrap" style="margin-bottom: 0">
																	<div class="prt_price">
																		<h2 style="font-size: 45px">
																			<fmt:formatNumber value="${detailVo.pdPrice }" pattern="#,###"/>원
																		</h2>
																	</div>
																	<div class="prt_body">
																		<ul>
																			<li
																			<c:if test="${detailVo.commercial == 'N' }">
																				class="none" 
																			</c:if> 
																			>상업적 이용</li>
																			<li
																			<c:if test="${detailVo.customize == 'N' }">
																				class="none" 
																			</c:if> 
																			>맞춤 디자인 제공</li>
																			<li
																			<c:if test="${detailVo.codeSupply == 'N' }">
																				class="none" 
																			</c:if> 
																			>소스 코드 제공</li>
																			<li
																			<c:if test="${detailVo.payment == 'N' }">
																				class="none" 
																			</c:if> 
																			>결제 기능</li>
																			<li>작업일/ 수정 횟수	&nbsp;:&nbsp; ${detailVo.pdTerm }일/ ${detailVo.editCount }회</li>
																		</ul>
																	</div>
																	<div class="prt_footer">
																		<a href="#" class="btn choose_package active" data-toggle="modal" data-target="#exampleModalToggleA${status.index }">Buy ${detailVo.pdType }</a>
																		<input type="hidden" value="${detailVo.pdTerm }">
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
										</div>
										
									</div>
								</div>
							
							</div>
						</div>
					</div>
			</section>
<!-- Modal A -->
<c:forEach var="detailVo" items="${list }" varStatus="status">
	<div class="modal fade modalA" id="exampleModalToggleA${status.index }" data-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
	  <div class="modal-dialog modal-xl modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header" style="margin: 0 auto; border-bottom: 3px solid #27ae60;">
	        <h5 class="modal-title" id="exampleModalToggleLabel">제작자 일정</h5>
	        <span class="mod-close" data-dismiss="modal" aria-hidden="true" style="border-radius: 50%;"><i class="ti-close"></i></span>
	      </div>
	      <div class="modal-body">
			<iframe src="<c:url value='/pd/calendar?userId=${expertVo.userId }'/>" width="790px" height="650px" style="border:none"></iframe>
	      </div>
	      <div class="modal-footer">
	        <button class="btn theme-bg rounded" data-target="#exampleModalToggleB${status.index }" data-toggle="modal" name="modelButton1">의뢰서 작성하기</button>
	      </div>
	    </div>
	  </div>
	</div>
</c:forEach>
<!-- Modal B -->
<c:forEach var="detailVo" items="${list }" varStatus="status">
	<div class="modal fade modalB" id="exampleModalToggleB${status.index }" data-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
	  <div class="modal-dialog modal-lg modal-dialog-centered">
	    <div class="modal-content">
	    	<form name="frmB" method="post" action="<c:url value='/pd/form'/>">
		      <div class="modal-header" style="margin-left: 15px">
		        <div class="prt_price" style="margin: 5px 0 0 0">
					<h3><span>${detailVo.pdType } : &nbsp;&nbsp;</span><fmt:formatNumber value="${detailVo.pdPrice }" pattern="#,###"/>원</h3>
				</div>
		        <span class="mod-close" data-dismiss="modal" aria-hidden="true"><i class="ti-close"></i></span>
		      </div>
		      <div class="modal-body">
		      	<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="form-group">
						<label>제목</label>
						<input type="text" class="form-control" name="formTitle">
					</div>
				</div>
				
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="form-group">
						<label>메세지</label>
						<textarea class="form-control ht-80" name="formContent"></textarea>
					</div>
				</div>
				<div class="row" style="justify-content: space-evenly;text-align: center;">
					<div class="col-lg-4 col-md-4 col-sm-4 col-4">
						<div class="form-group">
							<label>시작일</label>
							<div class="cld-box">
								<i class="ti-calendar" style="left: 16px; top: 16px;"></i>
								<input type="text" name="orderstart" class="form-control start" style="padding-left: 65px;"/>
								<input type="hidden" value="${detailVo.pdTerm }">
							</div>
						</div>
					</div>
					<span style="margin-top: 40px;">+ <span>${detailVo.pdTerm }</span> days</span>
					<div class="col-lg-4 col-md-4 col-sm-4 col-4">
						<div class="form-group">
							<label>종료일</label>
							<div class="cld-box">
								<i class="ti-calendar" style="left: 16px; top: 16px;"></i>
								<input type="text" name="orderend" class="form-control" style="padding-left: 65px;" readonly="readonly"/>
							</div>
						</div>
					</div>
		     	</div>
		      </div>
		      <div class="modal-footer">
		        <input type="button" class="btn theme-bg rounded" data-target="#exampleModalToggleA${status.index }" data-toggle="modal" name="modelButton2" style="margin-right: 20.5rem;" value="제작자 일정보기">
				<button class="btn theme-bg rounded" type="submit">Submit Review</button>
				<input type="hidden" name="userId" value="hong">
				<input type="hidden" value="${expertVo.userId }" name="pUserId">
				<input type="hidden" value="${param.pdNo }" name="pdNo">
				<input type="hidden" value="${detailVo.pdPrice }" name="price">
		      </div>
	      </form>
	    </div>
	  </div>
	</div>
</c:forEach>

<!-- slick -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(function(){
    	
     	date = new Date();
     	
     	$('input[name="orderstart"]').daterangepicker({
     		locale: {
     			    "format": 'YYYY/MM/DD',
     			    "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
     			    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
     			    },
      		singleDatePicker: true,
      		minDate:date
      	});
     	
     	//처음 날짜 자동 덧셈
     	$('.choose_package').click(function(){
     		date = new Date();
     		var today=getDate(date, 0);
     		$('input[name="orderstart"]').val(today);
     		var term=Number($(this).next().val());
     		var endDate=getDate(date, term);
        	$('input[name="orderend"]').val(endDate);
        });
     	
     	//날짜 변경하면 자동으로 종료일 변경
     	$('input[name="orderstart"]').blur(function(){
     		var term=Number($(this).next().val());
     		var startDate = $(this).val();
         	var end=getDate(startDate, term);
        	$('input[name="orderend"]').val(end);
     	});
     	
     	// 슬릭
        $('.mySlick').slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 3000
        });
        
     	//모달
        $('button[name=modelButton1]').click(function(){
        	$('.modalA').modal('hide');
        });
        $('input[name=modelButton2]').click(function(){
        	$('.modalB').modal('hide');
        });
        
        //리뷰 더 보기
        var bool=false;
        $('.more_review').hide();
        
        $('.reviews-checked').click(function(){
        	if(!bool){
	        	$('.more_review').show();
	        	$('.reviews-checked').text('리뷰 줄이기');
        	}else{
	        	$('.more_review').hide();
	        	$('.reviews-checked').text('리뷰 더 보기');
        	}
        	bool=!bool;
        });
        
    });
    
    function getDate(startDate, day){
		date=new Date(startDate);
		date.setDate(date.getDate() + day);
		year = date.getFullYear();
		month = date.getMonth() + 1;
		day = date.getDate();
		return year+ "/" +month + "/" + day;
	}
    
    $.formatDate = function(d){
		var date=d;
		if(d < 10){
			date= "0"+d;
		}
		return date;
	}

</script>



<%@ include file="../inc/bottom.jsp" %>