	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp" %>
<style type="text/css">
#profile {
	height: 32rem;
}
</style>
<!-- slick -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!-- Gallery + profile -->
<section class="gallery_parts pt-2 pb-2 d-none d-sm-none d-md-none d-lg-none d-xl-block">
	<div class="container">
		<div class="row align-items-center">
			<!-- Gallery -->
			<div class="col-lg-8 col-md-7 col-sm-12">
				<div class="mySlick">
			        <div><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></div>
			        <div><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></div>
			        <div><img src="https://via.placeholder.com/800x500" class="img-fluid mx-auto" alt="" /></div>
			    </div>
			</div>
			<!-- profile -->
			<div class="col-lg-4 col-md-4 col-sm-12" id="profile">
				<div class="property_dashboard_navbar">
					<div class="dash_user_avater">
						<img src="https://via.placeholder.com/500x500" class="img-fluid avater" alt="">
						<h4>EZEN</h4>
					</div>
					
					<div class="dash_user_menues">
						<ul>
							<li><a href="#"><i class="fa fa-tachometer-alt"></i>연락 가능 시간: 9시 ~ 23시</a></li>
							<li><a href="#"><i class="fa fa-tachometer-alt"></i>평균 응답 시간: 2시간 이내</a></li>
							<li><a href="#"><i class="fa fa-bookmark"></i>총 작업개수: 17개</a></li>
							<li><a href="#"><i class="fa fa-tasks"></i>소개</a></li>
							<li>안녕하세요</li>
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
										<ul class="prs_lists mb-0">
											<li><img src="${pageContext.request.contextPath}/img/deals.png" class="img-fluid" width="60" alt="" /> Special Offer</li>
											<li><span class="bath">Per Friendly</span></li>
										</ul>
										<h2>Unity기반 메타버스 게임을 제작해 드립니다.</h2>
									</div>
								</div>
								<div class="property_detail_section">
									<div class="prt-sect-pric">
										<ul class="_share_lists">
											<li><a href="#"><i class="fa fa-bookmark"></i></a></li>
											<li><a href="#"><i class="fa fa-share"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- language -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">language</h4>
								</div>
								<div class="block-body">
									<ul class="avl-features third">
										<li class="active">C#</li>
										<li class="active">C++</li>
										<li class="active">JavaScript</li>
										<li class="active">Python</li>
										<li class="active">TypeScript</li>
										<li class="active">Visual Basic .NET</li>
										<li>MongoDB</li>
										<li>Skeleton</li>
									</ul>
								</div>
							</div>
							<!-- detail -->
							<div class="property_block_wrap">
								<!-- detail header -->
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">Details</h4>
								</div>
								<!-- detail body -->
								<div class="block-body">
									<!-- detail menu -->
									<ul class="nav nav-tabs floor_plans" id="myTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link active" id="buy-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">서비스설명</a>
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
											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">1 B</h4>
															<p class="m-0"><span>1 Bed, 1 Bath</span><br><span>$1,400-$1,800, 900-1200 sqft</span></p>
															<span class="theme-cl">10 April</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">2659</a></td>
														<td>$1200+</td>
														<td>780 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">18 June</span></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">1365</a></td>
														<td>$1400+</td>
														<td>800 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">4 July June</span></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">1596</a></td>
														<td>$1500+</td>
														<td>900 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">10 july</span></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">7532</a></td>
														<td>$1350+</td>
														<td>850 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">16 July</span></td>
													</tr>
												  </tbody>
												</table>
											</div>
											
											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">2 B</h4>
															<p class="m-0"><span>2 Bed, 2 Bath</span><br><span>$2,200-$2,800, 1200-1500 sqft</span></p>
															<span class="theme-cl">17 Aug</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">3642</a></th>
														<td>$3,200+</td>
														<td>1800 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">5 Aug</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7236</a></th>
														<td>$2,900+</td>
														<td>1600 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">10 Aug</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">8742</a></th>
														<td>$2,400+</td>
														<td>1400 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">17 Aug</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">9142</a></th>
														<td>$2,300+</td>
														<td>1300 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">25 Aug</span></td>
													</tr>
												  </tbody>
												</table>
											</div>

											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">2 A</h4>
															<p class="m-0"><span>3 Bed, 2 Bath</span><br><span>$2,600-$3,500, 1200-2000 sqft</span></p>
															<span class="theme-cl">10 April</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">9648</a></th>
														<td>$1800+</td>
														<td>950 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">18 Sep</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">6831</a></th>
														<td>$3500+</td>
														<td>1500 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">18 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7830</a></th>
														<td>$3200+</td>
														<td>1250 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">20 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">8095</a></th>
														<td>$2500+</td>
														<td>1050 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">07 Nov</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7280</a></th>
														<td>$2000+</td>
														<td>1000 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">10 Dec</span></td>
													</tr>
												  </tbody>
												</table>
											</div>
											
											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">Studio</h4>
															<p class="m-0"><span>Studio, 1 Bath</span><br><span>$2,600-$3,500, 1200-2000 sqft</span></p>
															<span class="theme-cl">10 April</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">9648</a></th>
														<td>$1800+</td>
														<td>950 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">18 Sep</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">6831</a></th>
														<td>$3500+</td>
														<td>1500 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">18 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7830</a></th>
														<td>$3200+</td>
														<td>1250 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">20 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">8095</a></th>
														<td>$2500+</td>
														<td>1050 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">07 Nov</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7280</a></th>
														<td>$2000+</td>
														<td>1000 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">10 Dec</span></td>
													</tr>
												  </tbody>
												</table>
											</div>
											
										</div>
										<!-- tabs 1 -->
										<div class="tab-pane fade" id="1bed" role="tabpanel" aria-labelledby="1bed-tab">
											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">1 B</h4>
															<p class="m-0"><span>1 Bed, 1 Bath</span><br><span>$1,400-$1,800, 900-1200 sqft</span></p>
															<span class="theme-cl">10 April</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">2659</a></td>
														<td>$1200+</td>
														<td>780 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">18 June</span></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">1365</a></td>
														<td>$1400+</td>
														<td>800 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">4 July June</span></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">1596</a></td>
														<td>$1500+</td>
														<td>900 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">10 july</span></td>
													</tr>
													<tr>
														<td><a href="#" class="theme-cl">7532</a></td>
														<td>$1350+</td>
														<td>850 sqft</td>
														<td>1 Bed 1 Bath</td>
														<td><span class="theme-cl">16 July</span></td>
													</tr>
												  </tbody>
												</table>
											</div>
										</div>
										<!-- tabs 2 -->
										<div class="tab-pane fade" id="2bed" role="tabpanel" aria-labelledby="2bed-tab">
											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">2 B</h4>
															<p class="m-0"><span>2 Bed, 2 Bath</span><br><span>$2,200-$2,800, 1200-1500 sqft</span></p>
															<span class="theme-cl">17 Aug</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">3642</a></th>
														<td>$3,200+</td>
														<td>1800 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">5 Aug</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7236</a></th>
														<td>$2,900+</td>
														<td>1600 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">10 Aug</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">8742</a></th>
														<td>$2,400+</td>
														<td>1400 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">17 Aug</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">9142</a></th>
														<td>$2,300+</td>
														<td>1300 sqft</td>
														<td>2 Bed 2 Bath</td>
														<td><span class="theme-cl">25 Aug</span></td>
													</tr>
												  </tbody>
												</table>
											</div>

											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">2 A</h4>
															<p class="m-0"><span>3 Bed, 2 Bath</span><br><span>$2,600-$3,500, 1200-2000 sqft</span></p>
															<span class="theme-cl">10 April</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">9648</a></th>
														<td>$1800+</td>
														<td>950 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">18 Sep</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">6831</a></th>
														<td>$3500+</td>
														<td>1500 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">18 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7830</a></th>
														<td>$3200+</td>
														<td>1250 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">20 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">8095</a></th>
														<td>$2500+</td>
														<td>1050 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">07 Nov</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7280</a></th>
														<td>$2000+</td>
														<td>1000 sqft</td>
														<td>3 Bed 2 Bath</td>
														<td><span class="theme-cl">10 Dec</span></td>
													</tr>
												  </tbody>
												</table>
											</div>
										</div>
										<!-- tabs 3 -->
										<div class="tab-pane fade" id="studio" role="tabpanel" aria-labelledby="studio-tab">
											<!-- Single List -->
											<div class="table-responsive">
												<table class="table">
												  <tbody>
													<tr>
														<th colspan="3" class="aprt_text">
															<h4 class="mb-0">Studio</h4>
															<p class="m-0"><span>Studio, 1 Bath</span><br><span>$2,600-$3,500, 1200-2000 sqft</span></p>
															<span class="theme-cl">10 April</span>
														</th>
														<td colspan="2" class="text-right"><img src="${pageContext.request.contextPath}/img/floor.jpg" class="img-fluid" width="50" alt="" /></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">9648</a></th>
														<td>$1800+</td>
														<td>950 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">18 Sep</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">6831</a></th>
														<td>$3500+</td>
														<td>1500 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">18 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7830</a></th>
														<td>$3200+</td>
														<td>1250 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">20 Oct</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">8095</a></th>
														<td>$2500+</td>
														<td>1050 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">07 Nov</span></td>
													</tr>
													<tr>
														<th><a href="#" class="theme-cl">7280</a></th>
														<td>$2000+</td>
														<td>1000 sqft</td>
														<td>Studio 2 Bath</td>
														<td><span class="theme-cl">10 Dec</span></td>
													</tr>
												  </tbody>
												</table>
											</div>
										</div>
									
									</div>
								</div>
								
							</div>
							<!-- review -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">12 Reviews</h4>
								</div>
								
								<div class="block-body">
									<div class="rating-overview">
										<div class="rating-overview-box">
											<span class="rating-overview-box-total">4.8</span>
											<span class="rating-overview-box-percent">out of 5.0</span>
											<div class="star-rating" data-rating="5"><i class="fa fa-star filled"></i><i class="fa fa-star filled"></i><i class="fa fa-star filled"></i><i class="fa fa-star filled"></i><i class="fa fa-star-half filled"></i>
											</div>
										</div>

										<div class="rating-bars">
											<div class="rating-bars-item">
												<span class="rating-bars-name">Property</span>
												<span class="rating-bars-inner">
													<span class="rating-bars-rating high" data-rating="4.7">
														<span class="rating-bars-rating-inner" style="width: 85%;"></span>
													</span>
													<strong>4.7</strong>
												</span>
											</div>
											<div class="rating-bars-item">
												<span class="rating-bars-name">Value for Money</span>
												<span class="rating-bars-inner">
													<span class="rating-bars-rating good" data-rating="3.9">
														<span class="rating-bars-rating-inner" style="width: 75%;"></span>
													</span>
													<strong>3.9</strong>
												</span>
											</div>
											<div class="rating-bars-item">
												<span class="rating-bars-name">Location</span>
												<span class="rating-bars-inner">
													<span class="rating-bars-rating mid" data-rating="6.2">
														<span class="rating-bars-rating-inner" style="width: 65.2%;"></span>
													</span>
													<strong>6.2</strong>
												</span>
											</div>
											<div class="rating-bars-item">
												<span class="rating-bars-name">Agent Support</span>
												<span class="rating-bars-inner">
													<span class="rating-bars-rating high" data-rating="7.0">
														<span class="rating-bars-rating-inner" style="width:70%;"></span>
													</span>
													<strong>7.0</strong>
												</span>
											</div>
										</div>
									</div>
							
									<div class="author-review">
										<div class="comment-list">
											<ul>
												<li class="article_comments_wrap">
													<article>
														<div class="article_comments_thumb">
															<img src="https://via.placeholder.com/500x500" alt="">
														</div>
														<div class="comment-details">
															<div class="comment-meta">
																<div class="comment-left-meta">
																	<h4 class="author-name">Asiro HD. Mahrakjio</h4>
																	<div class="comment-date">17th Aug 2021</div>
																</div>
															</div>
															<div class="comment-text">
																<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborumab.
																	perspiciatis unde omnis iste natus error.</p>
															</div>
														</div>
													</article>
												</li>
												<li class="article_comments_wrap">
													<article>
														<div class="article_comments_thumb">
															<img src="https://via.placeholder.com/500x500" alt="">
														</div>
														<div class="comment-details">
															<div class="comment-meta">
																<div class="comment-left-meta">
																	<h4 class="author-name">Adam H. Vilson</h4>
																	<div class="comment-date">07th June 2021</div>
																</div>
															</div>
															<div class="comment-text">
																<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborumab.
																	perspiciatis unde omnis iste natus error.</p>
															</div>
														</div>
													</article>
												</li>
												<li class="article_comments_wrap">
													<article>
														<div class="article_comments_thumb">
															<img src="https://via.placeholder.com/500x500" alt="">
														</div>
														<div class="comment-details">
															<div class="comment-meta">
																<div class="comment-left-meta">
																	<h4 class="author-name">Shaurya Singh Preet</h4>
																	<div class="comment-date">10th June 2021</div>
																</div>
															</div>
															<div class="comment-text">
																<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborumab.
																	perspiciatis unde omnis iste natus error.</p>
															</div>
														</div>
													</article>
												</li>
											</ul>
										</div>
									</div>
									<a href="#" class="reviews-checked">12 More Reviews</a>
								</div>
							</div>
							<!-- write review -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">Write a Review</h4>
								</div>
								
								<div class="block-body">
									<div class="row">
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>Ratting</label>
												<input type="text" class="form-control">
											</div>
										</div>
										
										<div class="col-lg-6 col-md-6 col-sm-12">
											<div class="form-group">
												<label>Name</label>
												<input type="text" class="form-control">
											</div>
										</div>
										
										<div class="col-lg-6 col-md-6 col-sm-12">
											<div class="form-group">
												<label>eMmail ID</label>
												<input type="email" class="form-control">
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>Messages</label>
												<textarea class="form-control ht-80"></textarea>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<button class="btn theme-bg rounded" type="submit">Submit Review</button>
											</div>
										</div>
										
									</div>
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
													<div class="card">
														<div class="card-header" id="headingOne">
														  <h2 class="mb-0">
															<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
																STANDARD
															</button>
														  </h2>
														</div>
														<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#generalac">
															<div class="pricing_wrap" style="margin-bottom: 0">
																<div class="prt_price">
																	<h2><span>$</span>29</h2>
																	<span>per user, per month</span>
																</div>
																<div class="prt_body">
																	<ul>
																		<li>99.5% Uptime Guarantee</li>
																		<li>120GB CDN Bandwidth</li>
																		<li>5GB Cloud Storage</li>
																		<li class="none">Personal Help Support</li>
																		<li class="none">Enterprise SLA</li>
																	</ul>
																</div>
																<div class="prt_footer">
																	<a href="#" class="btn choose_package active">Buy Standard</a>
																</div>
															</div>
														</div>
													</div>
													<div class="card">
														<div class="card-header" id="headingTwo">
														  <h2 class="mb-0">
															<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																DELUXE
															</button>
														  </h2>
														</div>
														<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#generalac">
														  <div class="pricing_wrap" style="margin-bottom: 0">
															<div class="prt_price">
																<div class="recommended">Best Value</div>
																<h2><span>$</span>49</h2>
																<span>per user, per month</span>
															</div>
															<div class="prt_body">
																<ul>
																	<li>99.5% Uptime Guarantee</li>
																	<li>150GB CDN Bandwidth</li>
																	<li>10GB Cloud Storage</li>
																	<li>Personal Help Support</li>
																	<li class="none">Enterprise SLA</li>
																</ul>
															</div>
															<div class="prt_footer">
																<a href="#" class="btn choose_package active">Buy Deluxe</a>
															</div>
														</div>
														</div>
													</div>
													<div class="card">
														<div class="card-header" id="headingThree">
														  <h2 class="mb-0">
															<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																PREMIUM
															</button>
														  </h2>
														</div>
														<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#generalac">
														  <div class="pricing_wrap" style="margin-bottom: 0">
															<div class="prt_head">
															</div>
															<div class="prt_price">
																<h2><span>$</span>79</h2>
																<span>2 user, per month</span>
															</div>
															<div class="prt_body">
																<ul>
																	<li>100% Uptime Guarantee</li>
																	<li>200GB CDN Bandwidth</li>
																	<li>20GB Cloud Storage</li>
																	<li>Personal Help Support</li>
																	<li>Enterprise SLA</li>
																</ul>
															</div>
															<div class="prt_footer">
																<a href="#" class="btn choose_package active">Buy Premium</a>
															</div>
														</div>
														</div>
													</div>
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

<!-- slick -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script>
    $(document).ready(function(){
        $('.mySlick').slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 3000
        });
    });
</script>



<%@ include file="../inc/bottom.jsp" %>