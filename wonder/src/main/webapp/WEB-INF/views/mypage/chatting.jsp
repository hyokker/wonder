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

	function getChatDetail(rUserId){
		
		$.ajax({
			url : "<c:url value='/chat/chatDetail'/>",
			type : 'GET',
			data : "rUserId="+rUserId,
			success : function(response) {
				console.log(response); //response = list
				var sUserId = "<c:out value='${vo.userId}'/>";
				var html="";
				var rNickname = "";
				var rUserId = "";
				
				for(var i =0;i<response.length;i++){
					if(response[i].S_USER_ID===sUserId) {
						html += "<div class='message-plunch me'>";
						html += "	<div class='dash-msg-avatar margin-top-10 right'><i class='fa fa-user' style='font-size: 3em'></i></div>";
						html += "	<div class='dash-msg-text right'><p>"+response[i].CONTENT+"</p></div>";
						
						rNickname =response[i].R_NICKNAME;
						rUserId =response[i].R_USER_ID;
					}else if(!(response[i].S_USER_ID===sUserId)) {
						html += "<div class='message-plunch '>";
						//html += "	<div class='dash-msg-avatar margin-top-10 left'><img src=\"<c:url value='/img/mypage/expert_profile/"+filename+"' />\" alt=\"프로필사진\"></div>";
						html += "	<div class='dash-msg-avatar margin-top-10 left'><i class='fa fa-user' style='font-size: 3em'></i></div>";
						html += "	<div class='dash-msg-text left'><p>"+response[i].CONTENT+"</p></div>";
					}
					html += "</div>";
					html += "";
				}
				
				$('.dash-msg-content').empty();
				$('.dash-msg-content').append(html);
				$('#chatCommentContainer').scrollTop($('.dash-msg-content').innerHeight());
				
				$('.messages-headline h4').empty();
				$('.messages-headline h4').append(rNickname+"(<span id='r_Id'>"+rUserId+"</span>) 님과의 채팅입니다");
			},
			error : function(xhr, status, error) {
				alert("채팅 불러오기 실패, rUserId = "+rUserId);
			}
		});
	} //function
	
	function showOtherNickName(rUserId){
		$.ajax({
			url : "<c:url value='/chat/chatOtherSide'/>", //컨트롤러 만들어서 닉네임가져오기
			type : 'GET',
			data : "rUserId="+rUserId,
			success : function(response) {
				console.log(response); //response = 닉네임+아이디 hashmap (rUserId, rNickName)
				
				
			},
			error : function(xhr, status, error) {
				alert("닉네임 불러오기 실패, rUserId = "+rUserId);
			}
		});
	} //function

	$(function(){
		$('.dash-msg-inbox li').each(function(item,idx){
			$(this).click(function(){
				var rUserId = $(this).find('.message-by-headline input').val();
				
				getChatDetail(rUserId);
				
				/* readonly chatSendArea */
				$('#chatSendArea').removeAttr( 'readonly' );
				$('#chatSendArea').attr( "placeholder","내용을 입력해주세요");
				$('#chatCommentContainer').scrollTop($('#chatCommentContainer').height());
				
			});
		});
		
		
		$('#chatSendBt').click(function(){
			var content = $('#chatSendArea').val();
			var rUserId = $('#r_Id').text();
			
			if(content.length===0){
				alert("내용을 입력하세요");
			}else{
				console.log(content);

				$.ajax({
					url : "<c:url value='/chat/insertChat'/>",
					type : 'GET',
					data : "content="+content,
					success : function() {
						getChatDetail(rUserId);
						
					},
					error : function(xhr, status, error) {
						alert("test채팅 입력 실패, content = "+content);
					}
				}); //ajax
				
			} //else
			$('#chatSendArea').val('');
		}); //보내기 버튼 클릭함수
		
		
		
		
		
		
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
									<h4>채팅상대를 선택해주세요</h4>
									<a href="#" class="message-action"><i class="ti-trash"></i> Delete Conversation</a>
								</div>

								<div class="messages-container-inner">

									<!-- Messages -->
									<div class="dash-msg-inbox">
										<ul>
											<c:forEach var="map" items="${list }">
											<li style="cursor: pointer;">
												<a>
													<div class="dash-msg-avatar"><img src="<c:url value='/img/mypage/default_profile.png' />" alt="프로필사진"><span class="_user_status online"></span></div>

													<div class="message-by">
														<div class="message-by-headline">
															<h5>${map.R_NICKNAME }</h5>
															<span>36 min ago</span>
															<input type="hidden" value="${map.R_USER_ID }"/>
														</div>
														<p>${map.CONTENT }</p>
													</div>
												</a>
											</li>
											</c:forEach>


										
										</ul>
									</div>
									<!-- Messages / End -->

									<!-- Message Content -->
									<div id="chatCommentBox">
										<div id="chatCommentContainer">
											<div class="dash-msg-content">
		
											</div>
										</div>
										<div id="chatMessageTextArea">
											<div class="clearfix"></div>
											<div class="message-reply">
												<textarea cols="40" rows="3" class="form-control with-light" placeholder="채팅방을 선택해주세요" 
													id="chatSendArea" readonly="readonly"></textarea>
												<button type="submit" class="btn theme-bg" id="chatSendBt">전송</button>
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