<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/mypage/incSide" />
<%-- <%@ include file="incSide.jsp" %> --%>
<input type="hidden" id="pageCheck" value="chatting">
<link href="<c:url value='/css/mypage.css'/>" rel="stylesheet">

<script type="text/javascript">
	$(function(){
		$('.dash-msg-inbox li').each(function(item,idx){
			$(this).click(function(){
				var rUserId = $(this).find('.message-by-headline input').val();
				
				$.ajax({
					url : "<c:url value='/chat/chatDetail'/>",
					type : 'GET',
					data : "rUserId="+rUserId,
					success : function(response) {
						console.log(response);
						
						/*
						html += '<div class="message-plunch me">';
						html += '	<div class="dash-msg-avatar margin-top-10"><i class="fa fa-user" style="font-size: 3em"></i></div>';
						html += '	<div class="dash-msg-text"><p>안녕하세요! 의뢰주신 내용이 헬스장 스케쥴 관리 반응형 사이트 맞으실까요?</p></div>';
						html += '</div>';
						
						
						html += '<li>';
						html += '<a href="#">';
						html += '	<div class="dash-msg-avatar"><img src="/wonder/img/mypage/default_profile.png" alt=""><span class="_user_status online"></span></div>'
						html += '	<div class="message-by">';
						html += '		<div class="message-by-headline">';
						html += '			<h5>'+response.ruserNick+'</h5>';
						html += '			<span>'+response.timestamp+'</span>';
						html += '		</div>';
						html += '		<p>'+response.content+'</p>';
						html += '	</div>';
						html += '</a>';
						html += '</li>';
						 */
						$('.dash-msg-content').empty();
						$('.dash-msg-content').append(response);
					},
					error : function(xhr, status, error) {
						alert("test채팅 생성 실패, userId = "+userId);
					}
				});
				$('#chatCommentContainer').scrollTop($('#chatCommentContainer').height());
				
			});
		});
		
		
		
		/* createTest createZess */
		/* dash-msg-inbox */
		
		$('.createTest').click(function(){
			var rUserId = $(this).text();
			
			$.ajax({
				url : "<c:url value='/chat/createTestChat'/>",
				type : 'GET',
				data : "rUserId="+rUserId,
				success : function(response) {
					console.log(response);
					var html ='';
					html += '<li>';
					html += '<a>';
					html += '	<div class="dash-msg-avatar"><img src="/wonder/img/mypage/default_profile.png" alt=""><span class="_user_status online"></span></div>'
					html += '	<div class="message-by">';
					html += '		<div class="message-by-headline">';
					html += '			<h5>'+response.ruserNick+'</h5>';
					html += '			<span>'+response.timestamp+'</span>';
					html += '		</div>';
					html += '		<p>'+response.content+'</p>';
					html += '	</div>';
					html += '</a>';
					html += '</li>';
					
					$('.dash-msg-inbox ul').append(html);
					
					alert("test채팅 생성 성공, userId = "+response.chatNo);
				},
				error : function(xhr, status, error) {
					alert("test채팅 생성 실패, userId = "+userId);
				}
			});
		});
		
		
		
		
		
		
	});
</script>
<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">


						
						<div class="col-lg-9 col-md-8">
							<!-- Convershion -->
							<div class="messages-container margin-top-0">
								<div class="messages-headline">
									<h4>Connor Griffin</h4>
									<a href="#" class="message-action"><i class="ti-trash"></i> Delete Conversation</a>
								</div>

								<div class="messages-container-inner">

									<!-- Messages -->
									<div class="dash-msg-inbox">
										<ul>
											<c:forEach var="map" items="${list }">
											<li style="cursor: pointer;">
												<a>
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status online"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>${map.R_NICKNAME }</h5>
															<span>36 min ago</span>
															<input type="text" value="${map.R_USER_ID }"/>
														</div>
														<p>${map.CONTENT }</p>
													</div>
												</a>
											</li>
											</c:forEach>


											<%-- <li class="active-message">
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status offline"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>오지훈</h5>
															<span>2 hours ago</span>
														</div>
														<p>그럼 말씀하신것처럼 진행하겠습니다</p>
													</div>
												</a>
											</li>
											
											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status busy"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>이지현</h5>
															<span>Yesterday</span>
														</div>
														<p>저희 서비스를 이용해주셔서 감사합니다!</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status online"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>서원기</h5>
															<span>02.01.2020</span>
														</div>
														<p>1차 작업물입니다 확인부탁드립니다.</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status busy"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>장현수</h5>
															<span>03.01.2020</span>
														</div>
														<p>그러면 말씀하신걸로 적용할게요</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status online"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>홍길동</h5>
															<span>05.01.2020</span>
														</div>
														<p>감사합니다, 거래완료 눌러주시면 됩니다!</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status offline"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>김잔디</h5>
															<span>04.01.2020</span>
														</div>
														<p>글씨체를 좀 바꾸는게 좋을것같아요</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status online"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>박종익</h5>
															<span>31.05.2019</span>
														</div>
														<p>배너는 이런느낌으로 부탁드립니다</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status busy"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>빈진호</h5>
															<span>27.05.2019</span>
														</div>
														<p>저희 서비스를 이용해주셔서 정말 감사드립니다!</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status busy"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>박완일</h5>
															<span>24.05.2019</span>
														</div>
														<p>언제쯤 받아볼 수 있을까요?</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status offline"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>오동한</h5>
															<span>05.01.2020</span>
														</div>
														<p>네~그럼 완료되면 연락드리겠습니다</p>
													</div>
												</a>
											</li>

											<li>
												<a href="#">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""><span class="_user_status online"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>박상훈</h5>
															<span>07.01.2020</span>
														</div>
														<p>서비스 이용에 차질을 드려 죄송합니다. 빠른시간내에 처리하겠습니다.</p>
													</div>
												</a>
											</li>
														 --%>
										</ul>
									</div>
									<!-- Messages / End -->

									<!-- Message Content -->
									<div id="chatCommentBox">
										<div id="chatCommentContainer">
											<div class="dash-msg-content">
		
												<%-- <div class="message-plunch">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""></div>
													<div class="dash-msg-text"><p>안녕하세요!</p></div>
												</div>
		
												<div class="message-plunch me">
													<div class="dash-msg-avatar margin-top-10"><i class="fa fa-user" style="font-size: 3em"></i></div>
													<div class="dash-msg-text"><p>안녕하세요! 의뢰주신 내용이 헬스장 스케쥴 관리 반응형 사이트 맞으실까요?</p></div>
												</div>
		
												<div class="message-plunch">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""></div>
													<div class="dash-msg-text"><p>네! 기간은 30일이내로 생각중이고, 원하는 스타일의 사이트를 메일로 보내드릴게요.</p></div>
												</div>
		
												<div class="message-plunch me">
													<div class="dash-msg-avatar margin-top-10"><i class="fa fa-user" style="font-size: 3em"></i></div>
													<div class="dash-msg-text"><p>감사합니다, 보내주신내용 확인해봤는데요, 이야기하신 기간내에 완료 가능할것같습니다.</p></div>
												</div>
		
												<div class="message-plunch">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""></div>
													<div class="dash-msg-text"><p>다행이네요 혹시 메인페이지에 제가 원하는 애니메이션 효과를 넣으려면 추가요금이 필요할까요?</p></div>
												</div>
		
												<div class="message-plunch me">
													<div class="dash-msg-avatar margin-top-10"><i class="fa fa-user" style="font-size: 3em"></i></div>
													<div class="dash-msg-text"><p>그 애니메이션은 그냥 추가해드리겠습니다! 작업 진행내용은 3일마다 간단하게 보고드릴게요.</p></div>
												</div>
		
												<div class="message-plunch">
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt=""></div>
													<div class="dash-msg-text"><p>네 알겠습니다 그럼 수고해주세요!</p></div>
												</div>
												--%>
												<!-- Reply Area -->
												
											</div>
										</div>
										<div id="chatMessageTextArea">
											<div class="clearfix"></div>
											<div class="message-reply">
												<textarea cols="40" rows="3" class="form-control with-light" placeholder="내용을 입력해주세요"></textarea>
												<button type="submit" class="btn theme-bg">전송</button>
											</div>
										</div> 
									<!-- Message Content -->
									</div>

								</div>

							</div>
						</div>
						
						
						<div>
							<button class="createTest">test</button>
							<button class="createTest">highzess</button>
						</div>
						
						
					</div>
				</div>
			</section>
			<!-- ============================ User Dashboard End ================================== -->

<%@ include file="../inc/bottom.jsp" %>