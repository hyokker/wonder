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
						<h4>EZEN</h4>
					</div>
					
					<div class="dash_user_menues">
						<ul>
							<li><i class="fa fa-clock" style="font-size: large;margin-right: 10px;"></i>연락 가능 시간: 9시 ~ 23시</li>
							<li><i class="fa fa-check" style="font-size: large;margin-right: 10px;"></i>총 작업개수: 17개</li>
							<li><i class="fa fa-address-book" style="font-size: large;margin-right: 10px;"></i>소개</li>
							<li style="padding: 0 25px">합리적인 비용과 체계적인 분석으로 성공적인 메타버스 입점을 돕는 알파디입니다.
궁금한 내용은 언제든 편하게 문의해주세요! </li>
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
										<%-- <ul class="prs_lists mb-0">
											<li><img src="${pageContext.request.contextPath}/img/deals.png" class="img-fluid" width="60" alt="" /> Special Offer</li>
											<li><span class="bath">Per Friendly</span></li>
										</ul> --%>
										<h2>Unity기반 메타버스 게임을 제작해 드립니다.</h2>
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
												<p>①"몰" 이란 (주)테스트닷컴 회사가 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

②"이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ '회원'이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ '비회원'이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관등의 명시와 설명 및 개정) 
① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 테스트샵 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·
환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등
을 제공하여 이용자의 확인을 구하여야 합니다.

③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자
서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하
지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기
화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두
고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽
도록 표시합니다. 

⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되
고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계
약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지
기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호
에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 
및 관계법령 또는 상관례에 따릅니다.</p>
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
																<span>패키지 설명</span>
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
													<div class="col-lg-3 col-md-4 col-sm-12 text-center">
														<ul>
															<li class="pricingTitle">
																STANDARD
																<span class="show-mb"></span>
															</li>
															<li>
																$29
															</li>
															<li>
																패키지 설명
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																1회
															</li>
															<li>
																15일
															</li>
														</ul>
													</div>
													<div class="col-lg-3 col-md-4 col-sm-12 text-center pricing--emphasise">
														<ul>
															<li class="pricingTitle">
																DELUXE
																<span class="show-mb">Area</span>
															</li>
															<li>
																$49
															</li>
															<li>
																패키지 설명
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																2회
															</li>
															<li>
																20일
															</li>
														</ul>
													</div>
													
													<div class="col-lg-3 col-md-4 col-sm-12 text-center">
														<ul>
															<li class="pricingTitle">
																PREMIUM
															</li>
															<li>
																$79
															</li>
															<li>
																패키지 설명
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																3회
															</li>
															<li>
																30일
															</li>
														</ul>
													</div>
												</div>
												
						                    </div>
											</div>

											<!-- tab 3 -->
											<div class="table-responsive">
												<h5>수정 및 재진행</h5>
												<p>수정 및 재진행</p>
												<p>1. Unity 기반 소형맵 제작</p>
												<p>—> 1차 배포 과정에서 기획서 범위 내의 수정 요청이 1회 가능합니다.</p>
												<p>—> 테스트 과정에서는 기획서 범위 내에서 최종 수정 요청이 가능하며 이후 수정은 불가합니다.</p>
												<p>2. Unity 기반 인게임 로직 맵 제작</p>
												<p>—> 1차 배포 과정에서 기획서 범위 내의 수정 요청이 2회 가능합니다. </p>
												<p>—> 테스트 과정에서는 기획서 범위 내에서 최종 수정 요청이 가능하며 이후 수정은 불가합니다.</p>
												<p>3. Unity 기반 인게임 중형맵 제작</p>
												<p>—> 컨설팅 및 DIVE 과정에서 기획서 작성 과정이 세부적으로 이루어지며, 최종 기획서 작성 이전까지 기획 수정 요청이 가능합니다.</p>
												<p>—> 1차 배포 과정에서 기획서와 다른 범위에서의 수정 요청이 가능합니다. </p>
												<p>—> 테스트 과정에서는 기획서 범위 내에서 최종 수정 요청이 가능하며 이후 수정은 불가합니다.</p>
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
											<p>①"몰" 이란 (주)테스트닷컴 회사가 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

②"이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ '회원'이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ '비회원'이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관등의 명시와 설명 및 개정) 
① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 테스트샵 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·
환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등
을 제공하여 이용자의 확인을 구하여야 합니다.

③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법, 전자
서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하
지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기
화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다.
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두
고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽
도록 표시합니다. 

⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되
고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계
약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지
기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호
에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 
및 관계법령 또는 상관례에 따릅니다.</p>
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
																<span>패키지 설명</span>
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
													<div class="col-lg-3 col-md-4 col-sm-12 text-center">
														<ul>
															<li class="pricingTitle">
																STANDARD
																<span class="show-mb"></span>
															</li>
															<li>
																$29
															</li>
															<li>
																패키지 설명
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																1회
															</li>
															<li>
																15일
															</li>
														</ul>
													</div>
													<div class="col-lg-3 col-md-4 col-sm-12 text-center pricing--emphasise">
														<ul>
															<li class="pricingTitle">
																DELUXE
																<span class="show-mb">Area</span>
															</li>
															<li>
																$49
															</li>
															<li>
																패키지 설명
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="crossmark"></div>
															</li>
															<li>
																2회
															</li>
															<li>
																20일
															</li>
														</ul>
													</div>
													
													<div class="col-lg-3 col-md-4 col-sm-12 text-center">
														<ul>
															<li class="pricingTitle">
																PREMIUM
															</li>
															<li>
																$79
															</li>
															<li>
																패키지 설명
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																<div class="checkmark"></div>
															</li>
															<li>
																3회
															</li>
															<li>
																30일
															</li>
														</ul>
													</div>
												</div>
												
						                    </div>
										</div>
										<!-- tabs 3 -->
										<div class="tab-pane fade" id="2bed" role="tabpanel" aria-labelledby="2bed-tab">
											<h5>수정 및 재진행</h5>
											<p>수정 및 재진행</p>
											<p>1. Unity 기반 소형맵 제작</p>
											<p>—> 1차 배포 과정에서 기획서 범위 내의 수정 요청이 1회 가능합니다.</p>
											<p>—> 테스트 과정에서는 기획서 범위 내에서 최종 수정 요청이 가능하며 이후 수정은 불가합니다.</p>
											<p>2. Unity 기반 인게임 로직 맵 제작</p>
											<p>—> 1차 배포 과정에서 기획서 범위 내의 수정 요청이 2회 가능합니다. </p>
											<p>—> 테스트 과정에서는 기획서 범위 내에서 최종 수정 요청이 가능하며 이후 수정은 불가합니다.</p>
											<p>3. Unity 기반 인게임 중형맵 제작</p>
											<p>—> 컨설팅 및 DIVE 과정에서 기획서 작성 과정이 세부적으로 이루어지며, 최종 기획서 작성 이전까지 기획 수정 요청이 가능합니다.</p>
											<p>—> 1차 배포 과정에서 기획서와 다른 범위에서의 수정 요청이 가능합니다. </p>
											<p>—> 테스트 과정에서는 기획서 범위 내에서 최종 수정 요청이 가능하며 이후 수정은 불가합니다.</p>
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
											    <span class="rating-upper" style="width: 46%">
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
										<span class="bigScore">3.2</span>
										<span style="margin: 12px 0 0 15px">out of 5.0 (12개)</span>
									</div>
							
									<div class="author-review">
										<div class="comment-list">
											<ul>
												<li class="article_comments_wrap">
													<article>
														<div class="comment-details">
															<div class="comment-meta">
																<div class="comment-left-meta">
																	<h4 class="author-name">Asiro HD. Mahrakjio</h4>
																	<div class="comment-date">17th Aug 2021</div>
																	<div class="rating" style="font-size: 15px;top: -5px">
																		<span class="rating-upper" style="width: 80%">
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
															</div>
															<div class="comment-text" style="margin: 0">
																<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim laborumab.
																	perspiciatis unde omnis iste natus error.</p>
															</div>
														</div>
													</article>
												</li>
												<li class="article_comments_wrap">
													<article>
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
												<!-- 나머지 리뷰 -->
												<li id="more"></li>
												<li class="article_comments_wrap more_review">
													<article>
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
												<li class="article_comments_wrap more_review">
													<article>
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
												<li class="article_comments_wrap more_review">
													<article>
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
									<a href="#more" class="reviews-checked">리뷰 더 보기</a>
								</div>
							</div>
							<!-- write review -->
							<div class="property_block_wrap">
								<div class="property_block_wrap_header">
									<h4 class="property_block_title">리뷰 작성</h4>
								</div>
								
								<div class="block-body">
									<div class="row">
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>Ratting</label>
												<div id="half-stars-example">
												    <div class="rating-group">
												    	<input type="radio" disabled="disabled">
												        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-05" value="0.5" type="radio">
												        <label aria-label="1 star" class="rating__label" for="rating2-10"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-10" value="1" type="radio">
												        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-15" value="1.5" type="radio">
												        <label aria-label="2 stars" class="rating__label" for="rating2-20"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-20" value="2" type="radio">
												        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-25" value="2.5" type="radio" checked>
												        <label aria-label="3 stars" class="rating__label" for="rating2-30"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-30" value="3" type="radio">
												        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-35" value="3.5" type="radio">
												        <label aria-label="4 stars" class="rating__label" for="rating2-40"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-40" value="4" type="radio">
												        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-45" value="4.5" type="radio">
												        <label aria-label="5 stars" class="rating__label" for="rating2-50"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
												        <input class="rating__input" name="rating2" id="rating2-50" value="5" type="radio">
												    </div>
												</div>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>제목</label>
												<input type="text" class="form-control">
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<label>내용</label>
												<textarea class="form-control ht-80"></textarea>
											</div>
										</div>
										
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="form-group">
												<button class="btn theme-bg rounded" type="submit">등록</button>
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
																	<h2 style="font-size: 45px">270,000원</h2>
																</div>
																<div class="prt_body">
																	<ul>
																		<li>상업적 이용</li>
																		<li class="none">맞춤 디자인 제공</li>
																		<li class="none">소스 코드 제공</li>
																		<li class="none">결제 기능</li>
																		<li>작업일/ 수정 횟수	&nbsp;:&nbsp; 15일/ 1회</li>
																	</ul>
																</div>
																<div class="prt_footer">
																	<a href="#" class="btn choose_package active" data-toggle="modal" data-target="#exampleModalToggle">Buy Standard</a>
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
															</div>
															<div class="prt_body">
																<ul>
																	<li>상업적 이용</li>
																	<li>맞춤 디자인 제공</li>
																	<li>소스 코드 제공</li>
																	<li class="none">결제 기능</li>
																	<li>작업일/ 수정 횟수	&nbsp;:&nbsp; 20일/ 2회</li>
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
															</div>
															<div class="prt_body">
																<ul>
																	<li>상업적 이용</li>
																	<li>맞춤 디자인 제공</li>
																	<li>소스 코드 제공</li>
																	<li>결제 기능</li>
																	<li>작업일/ 수정 횟수	&nbsp;:&nbsp; 30일/ 3회</li>
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
<!-- Modal 1 -->
<div class="modal fade" id="exampleModalToggle" data-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-xl modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header" style="margin: 0 auto; border-bottom: 3px solid #27ae60;">
        <h5 class="modal-title" id="exampleModalToggleLabel">제작자 일정</h5>
        <span class="mod-close" data-dismiss="modal" aria-hidden="true" style="border-radius: 50%;"><i class="ti-close"></i></span>
      </div>
      <div class="modal-body">
		<iframe src="<c:url value='/html/calendar.html'/>" width="790px" height="650px" style="border:none"></iframe>
      </div>
      <div class="modal-footer">
        <button class="btn theme-bg rounded" data-target="#exampleModalToggle2" data-toggle="modal" id="modelButton1">의뢰서 작성하기</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal 2 -->
<div class="modal fade" id="exampleModalToggle2" data-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header" style="margin-left: 15px">
        <!-- <h5 class="modal-title" id="exampleModalToggleLabel2">Modal 2</h5> -->
        <div class="prt_price" style="margin: 5px 0 0 0">
			<h3><span>STANDARD : &nbsp;&nbsp;</span>270,000원</h3>
		</div>
        <span class="mod-close" data-dismiss="modal" aria-hidden="true"><i class="ti-close"></i></span>
      </div>
      <div class="modal-body">
      	<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="form-group">
				<label>title</label>
				<input type="text" class="form-control">
			</div>
		</div>
		
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="form-group">
				<label>Messages</label>
				<textarea class="form-control ht-80"></textarea>
			</div>
		</div>
		<div class="row" style="justify-content: space-evenly;text-align: center;">
			<div class="col-lg-4 col-md-4 col-sm-4 col-4">
				<div class="form-group">
					<label>시작일</label>
					<div class="cld-box">
						<i class="ti-calendar" style="left: 16px; top: 16px;"></i>
						<input type="text" name="startDate" class="form-control" style="padding-left: 65px;"/>
					</div>
				</div>
			</div>
			<span style="margin-top: 40px;">+ 15 days</span>
			<div class="col-lg-4 col-md-4 col-sm-4 col-4">
				<div class="form-group">
					<label>종료일</label>
					<div class="cld-box">
						<i class="ti-calendar" style="left: 16px; top: 16px;"></i>
						<input type="text" name="endDate" class="form-control" style="padding-left: 65px;" readonly="readonly"/>
					</div>
				</div>
			</div>
     	</div>
      </div>
      <div class="modal-footer">
        <button class="btn theme-bg rounded" data-target="#exampleModalToggle" data-toggle="modal" id="modelButton2" style="margin-right: 20.5rem;">제작자 일정보기</button>
		<button class="btn theme-bg rounded" type="submit">Submit Review</button>
      </div>
    </div>
  </div>
</div>

<!-- slick -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function(){
     		date = new Date();
    	
     	$('input[name="startDate"]').daterangepicker({
      		singleDatePicker: true,
      		minDate:date,
      	});
     	//날짜 자동 덧셈
     	$('.choose_package').click(function(){
     		
        	var endDate=date.addDays(15);
        	e_year = endDate.getFullYear();
        	e_month = endDate.getMonth() + 1;
        	e_day = endDate.getDate();
         	var end= e_month + "/" + e_day + "/" + e_year;
        	$('input[name="endDate"]').val(end);
      		$('input[name="endDate"]').attr("placeholder","End Date");
        });
     	//날짜 변경하면 자동으로 종료일 변경
     	$('input[name="startDate"]').blur(function(){
     		var startDate = $('input[name="startDate"]').val();
     		if(startDate.valueOf() < date.valueOf()){
     			alert();
     		}else{
	     		date = new Date(startDate);
	     		var endDate=date.addDays(15);
	        	e_year = endDate.getFullYear();
	        	e_month = endDate.getMonth() + 1;
	        	e_day = endDate.getDate();
	         	var end= e_month + "/" + e_day + "/" + e_year;
	        	$('input[name="endDate"]').val(end);
     		}
     	});
     	
     	// 슬릭
        $('.mySlick').slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 3000
        });
        
     	//모달
        $('#modelButton1').click(function(){
        	$('#exampleModalToggle').modal('hide');
        });
        $('#modelButton2').click(function(){
        	$('#exampleModalToggle2').modal('hide');
        });
        
        //리뷰 더 보기
        $('.more_review').hide();
        
        $('.reviews-checked').click(function(){
        	$('.more_review').show();
        	$('.reviews-checked').text('리뷰 줄이기');
        });
    });
    
    Date.prototype.addDays = function(days) {
        var date = new Date(this.valueOf());
        date.setDate(date.getDate() + days);
        return date;
    }

</script>



<%@ include file="../inc/bottom.jsp" %>