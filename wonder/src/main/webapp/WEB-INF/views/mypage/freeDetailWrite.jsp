<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="author" content="Themezhub" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>작업물 중개는 원더(WONDER)</title>
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet">
<link href="<c:url value='/css/mypage.css'/>" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pdDetail.css">

	
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		var introduction = "<c:out value='${expertVo.introduction}' />";
		console.log("introduction="+introduction);
		var after=introduction.replaceAll("\n","<br>");
		console.log("after="+after);
		$('#introduction').html(after);
		
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
</script>
<body class="yellow-skin">


<div class="col-lg-12 col-md-12 col-sm-12">
	<div class="col-lg-12 col-md-12 col-sm-12">
		<a class="nav-brand" href=""> 
			<img src="${pageContext.request.contextPath}/img/logo.png"	class="logo" alt="원더의 메인 로고입니다" />
		</a> 
	</div>
	
	
	<div class="col-lg-12 col-md-12 col-sm-12 border">
		<div class="freeDetailAveterContainer">
			<div class="dash_user_avater freeDetailAvater">
				<c:if test="${profileVo.fileName !=null && profileVo.fileName != ''}">
					<a class="linkFreeWrite">
						<img src="<c:url value='/img/mypage/expert_profile/${profileVo.fileName }' />" class="img-fluid avater" alt="프로필이미지">
					</a>
				</c:if>
				<c:if test="${profileVo.fileName ==null || profileVo.fileName == ''}">
					<%-- <a href="<c:url value='/mypage/freeDetailWrite' />"> --%>
					<a class="linkFreeWrite">
						<img src="<c:url value='/img/mypage/default_profile.png' />" class="img-fluid avater" alt="프로필이미지">
					</a>
				</c:if>
			<h3>${memVo.nickname }</h3>
			<h4>${userId }</h4>
			<span>${memVo.email }</span>
			</div>
			<div class="freeDetailIntroContainer">
				<div class="freeDetailLeft">
					<div class="freeDetailIntro">
					<h5 class="bold">프리랜서 소개</h5><br/>
						<span>
							<% pageContext.setAttribute("newLine","\n"); %>
							${fn:replace(expertVo.introduction, newLine, "<br/>") }
						</span>
					</div>
					
					<div class="freeDetailCareer">
					<h5 class="bold">프리랜서 경력</h5><br/>
						<span>
							<% pageContext.setAttribute("newLine","\n"); %>
							${fn:replace(expertVo.introduction, newLine, "<br/>") }
						</span>
					</div>
				</div>
				
				<div class="freeDetailRight">
					<div class="freeDetailSkill">
						<h5 class="bold">보유 기술</h5><br/>
							<span>
								<% pageContext.setAttribute("newLine","\n"); %>
								${fn:replace(expertVo.introduction, newLine, "<br/>") }
							</span>
						</div>
					
				</div>
			</div>
			
		</div> <!-- 아바타 컨테이너 -->
		
		<div class="freeDetailReviewContainer">
			<div class="property_block_wrap">
				<div class="property_block_wrap_header">
					<h4 class="property_block_title">리뷰</h4>
				</div>
				<!-- star percentage -->
				<div class="block-body">
					<div class="rating-overview">
						<c:if test="${empty reviewList }">
							<span style="margin: 0 auto;">등록된 리뷰가 없습니다.</span>
						</c:if>
						<c:if test="${!empty reviewList }">
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
						</c:if>
					</div>
			
					<div class="author-review">
						<div class="comment-list">
							<ul>
								<c:if test="${!empty reviewList }">
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
															<h4 class="author-name">${reviewVo.userId } 
																<span class="regdate">
																	<c:if test="${reviewVo.userId == userId }">
																		<span style="margin-right: 7px;"><a href="<c:url value='/pd/reviewDel?reviewNo=${reviewVo.reviewNo }&pdNo=${pdVo.pdNo }' />" class="reviewDel">삭제</a></span>
																	</c:if>
																	<fmt:formatDate value="${reviewVo.regdate}" pattern="yyyy-MM-dd HH:mm" />
																</span>
															</h4>
															<span class="rating" style="font-size: 15px;top: -2px">
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
															</span>
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
								</c:if>
							</ul>
						</div>
					</div>
					<c:if test="${reviewList.size() > 3 }">
						<a href="#more" class="reviews-checked">리뷰 더 보기</a>
					</c:if>
				</div>
			</div>
		</div>
		
	</div>
</div>
	
	
	



</body>
</html>