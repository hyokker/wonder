<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<!--  
	<해결과제>
	새창 -> modal 변경이나 창 크기 조절
-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
<script type="text/javascript">
	$(function(){
	
		//getReplylist();
		
		//게시글 삭제(미완)
		$('#btdelete').click(function(){
			window.open("<c:url value='delete?boardNo=${param.boardNo}&fileName=${vo.fileName }'/>",'width=500, height=400');
		});
		
		//대댓글 등록
		$(".reReplyForm").hide();
	
		$(".btRereply").click(function(){
			if($(this).text()=="답글쓰기"){
				$(this).text("작성취소");
			}else{
				$(this).text("답글쓰기");
			}
			
			$(this).closest(".comment-details").find(".reReplyForm").toggle();
			//var groupNo = $(this).attr("id");
			//$(this).closest(".comment-details").find(".reReplyForm").attr("id",toggle_id);
		});
		
		
		
	});
	

	
	
	
</script>
<script type="text/javascript">
//댓글 리스트(미완- boardNo없이 넘아가는 문제는 editView에 input hidden 삽입으로 해결했으나 reload됨)
function getReplylist(replyNo){
	alert("getReplylist");
	
	$.ajax({
		async:'false',
		url:'<c:url value="/board/detail/getReplylist"/>',
		type:'GET',
		data:"replyNo="+replyNo,
		success:function(res){
			alert("테스트중2");
			var replyList = "";
			/*등록된 댓글 내용 */
				replyList +=						'<div class="comment-reply" id="'+replyNo+'comment-reply">';
				/*댓글 수정, 댓글 삭제 */
				//replyList +=							'<c:if test="">
				//replyList +=							'</c:if>';
				replyList +=							'<div class="replyButtons" id="'+replyNo+'replyButtons">';
				replyList +=								'<button class="btReplyEditOpen"';
				replyList +=									'onclick="replyEditView('+replyNo+')">수정</button>';
				replyList +=									'|';
				replyList +=								'<button class="replyDelete"';
				replyList +=									'onclick="replyDelete('+replyNo+')">삭제</button>';
				replyList +=							'</div>';
				replyList +=							'<div class="boardReply" id="'+replyNo+'boardReply">';
				replyList +=								'<p class="comments">';
				replyList +=									'<span id="'+replyNo+'replyContent">'+res.replyContent+'</span>';
												/*24시간 이내 작성 댓글 */
				replyList +=									'<c:if test="'+res.dateTerm+'<24">';
				replyList +=										'&nbsp;<span class="new">new</span>';
				replyList +=									'</c:if>';
				replyList +=								'</p>';
											/*답글쓰기(대댓글은 불가)  */
				replyList +=								'<c:if test="'+res.step+'==0">';
				replyList +=									'<button class="btRereply">답글쓰기</button>';
				replyList +=								'</c:if>';
				replyList +=							'</div>';
				replyList +=						'</div>';
				/*등록된 댓글 끝*/
			$('#'+replyNo+'comment-reply').replaceWith(editView);
		},
		
		error:function(xhr, status, error){
			alert('error:'+error);
		}
	});
}

//댓글삭제(완료)
function replyDelete(replyNo){
	var c = confirm("해당 댓글을 삭제하시겠습니까?");
	if(c==true){
		$.ajax({
			url:'<c:url value="/board/detail/replyDelete"/>',
			type:'GET',
			data:"replyNo="+replyNo,
			/*
			dataType:'json',
			*/
			success:function(res){
				alert("해당 댓글이 삭제되었습니다");
				location.reload();
			},
			
			error:function(xhr, status, error){
				alert('error:'+error);
			}
		});
	}
}

function replyEditView(replyNo) {
	$.ajax({
		url:'<c:url value="/board/detail/replyEditView"/>',
		type:'GET',
		data:"replyNo="+replyNo,
		
		//dataType:'json',
		
		success:function(res){
			alert('${param.boardNo}');
			
			var editView = "";
			editView +=					'<div class="comment-reply" id="'+replyNo+'comment-reply">';
			editView += 					'<form name="frmReplyEdit" >';
			editView +='<input type="hidden" name="boardNo" value="${param.boardNo }" />';
										/*댓글 수정취소 */
			editView +=							'<div class="replyButtons" id="'+replyNo+'replyButtons">';
			editView +=								'<button class="btReplyEditOpen"';
			editView +=									'onclick="getReplylist('+replyNo+')">수정취소</button>';
			editView +=								'</div>';
			editView +=							'<div class="boardReply" id="'+replyNo+'boardReply">';
			editView += 								'<textarea class="comments form-control" id="'+replyNo+'replyContent" placeholder="댓글을 입력하세요">';
			editView += 								res.replyContent;
			editView += 								'</textarea>';
			editView += 							'<button class="btn btn-theme comments_edit" type="submit" id="comment_edit"';
			editView += 								'onclick="#">';
			editView += 								'수정완료';
			editView += 							'</button>';
			editView +=							'</div>';
			editView += 					'</form>';
			editView +=					'</div>';
			//
			
			$('#'+replyNo+'comment-reply').replaceWith(editView);
		},
		
		error:function(xhr, status, error){
			alert('error:'+error);
		}
	});
}
</script>
<title>wonder - 자유게시판 상세보기</title>

<section class="gray">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8 col-md-12">
				<div class="property_block_wrap">
					<div class="">
						<!-- 제목 -->
						<div class="title">
							<h3 class="property_block_title black">
								<a href="<c:url value='list'/>">자유게시판<span
									class="submenu-indicator"></span></a>
							</h3>
							<hr>
							<h4 class="black">
								<c:choose>
									<c:when test="${vo.cateType=='N'}">
										<em class="board_category red">[공지]</em>
									</c:when>
									<c:otherwise>
										<em class="board_category color_gray">[일반]</em>
									</c:otherwise>
								</c:choose>
								${vo.boardTitle}
							</h4>
						</div>
						<div class="register_info right">
						<!-- 작성자 -->
							<span class=""><i class="ti-user theme-cl">
								${vo.nickname}</i></span> |
						<!-- 작성일 -->	
							<span class="black"><em class="ic ic_calendar"></em>
									<fmt:formatDate value="${vo.regdate}"
										pattern="yyyy-MM-dd HH:mm:ss" />
							</span> | 
						<!--  조회수-->
							<span class="color_gray"><em class="ic ic_view"></em>${vo.readCount}</span> | 
						<!--  공유하기-->
							<span class="bold navy"><em class="ic ic_share"></em>공유</span> <em
								class="ic ic_more"></em>
						</div>
						<hr>
					</div>
					<div class="block-body">
						<div class="right">
							<em class="ic ic_file"></em>
							<span class="upfile">첨부파일&nbsp;</span>
							<c:if test="${!empty vo.fileName }">
								<span> 
									<a href="<c:url value='/board/download?boardNo=${param.boardNo}&fileName=${vo.fileName}'/>">
										${fileInfo} 
									</a></span>
								<!-- 
								<span>다운 : ${vo.downCount}</span>
								 -->
							</c:if>
						</div>
						<%
						pageContext.setAttribute("newLine", "\r\n");
						%>
						<div class="lastDiv">
							<p class="content black">${fn:replace(vo.boardContent, newLine, "<br>")}</p>
						</div>
					</div>

					<div class="btn center">
						<button class="btn btn-theme" type="button" id=""
							onclick="location.href='<c:url value='write'/>'">
							<i class="fas fa-edit"></i> 글쓰기
						</button>
						<button class="btn btn-theme" type="button" id="btedit"
							onclick="location.href='<c:url value='edit?boardNo=${param.boardNo}'/>'">
							<i class="fa fa-pen-nib"></i> 수정
						</button>
						<button class="btn btn-theme" type="button" id="btdelete">
							<i class="fas fa-trash"></i> 삭제
						</button>
						<button class="btn btn-theme" type="button" id="btlist"
							onclick="location.href='<c:url value='list'/>'">
							<span class="ti-view-list"></span> 목록
						</button>
					</div>

<!-- 댓글 등록  -->
<div class="comment-box submit-form">
	<div class="property_block_wrap">
		<form name="frmReply" method="post" action="<c:url value='/board/detail/reply'/>">
<!--부모테이블 memVo 외래키 제약조건 재생성 및 값 적용
<input type="hidden" name="userId" value="${vo.userId}" />
  -->
<input type="hidden" name="userId" value="testUser" />
<!-- 접속계정의 닉네임으로 처리  변경
<input type="hidden" name="nickname" value="${sessionScope.nickname}" />
-->
<input type="hidden" name="nickname" value="testNick" />
<input type="hidden" name="boardNo" value="${param.boardNo }" />
								<div class="form-group">
									<h5 class="comments-title black">댓글 ${totalComment }개</h5>
									<textarea class="comments form-control" name="replyContent"  placeholder="댓글을 입력하세요"></textarea>
									<button class="btn btn-theme comments_write" type="submit">
										<i class="fas fa-edit"></i> 등록
									</button>
								</div>
							</form>

<!-- 댓글 리스트(replyList) -->
<div id="replyList">
<c:if test="${empty replyList }">
	<p class="NoReply">아직 댓글이 없습니다</p>
</c:if>
<c:if test="${!empty replyList }">
	<c:forEach var="replyVo" items="${replyList }">
		<div class="comment-details">
			<c:if test="${replyVo.delType=='Y'}">
       			<p class="color_gray">삭제된 댓글입니다.</p>
     		</c:if>
			<c:if test="${replyVo.delType!='Y'}">
			<!-- 대댓글의 경우 들여쓰기 -->
				<c:if test="${replyVo.step>0}">
					<div class="reReply comment-meta" style="padding-left:40px" 
						id='${replyVo.replyNo}comment-meta'
						onclick="replyDetail(${replyVo.replyNo})">
				</c:if>
				<!--  1차댓글의 경우 -->
				<c:if test="${replyVo.step==0}">
					<div class="original comment-meta" 
						id='${replyVo.replyNo}comment-meta'
						onclick="replyDetail(${replyVo.replyNo})">
				</c:if>
				<!-- 등록된 댓글 작성자&등록일-->
						<div class="comment-left-meta">
							<span class="author-name" id="">
								<i class="ti-user theme-cl"> ${replyVo.nickname}</i>
							</span>
							<span class="comment-date">&nbsp;<fmt:formatDate
									value="${replyVo.replyRegdate}" type="both" />
							</span>
						</div>
				<!--등록된 댓글 내용-->
						<div class="comment-reply" id='${replyVo.replyNo}comment-reply'>
				<!-- 댓글 수정, 댓글 삭제 -->
						<!--  접속계정에만 보이도록
						<c:if test=""></c:if>
						-->
							<div class="replyButtons" id="${replyVo.replyNo}replyButtons">
								<button class="btReplyEditOpen"
									onclick="replyEditView(${replyVo.replyNo})">수정</button>
								|
								<button class="replyDelete"
									onclick="replyDelete(${replyVo.replyNo})">삭제</button>
							</div>
							<div class="boardReply" id="${replyVo.replyNo}boardReply">
								<p class="comments">
									<span id="${replyVo.replyNo}replyContent">${replyVo.replyContent }</span>
									<!-- 24시간 이내 작성 댓글 -->
									<c:if test="${replyVo.dateTerm<24 }">
										&nbsp;<span class="new">new</span>
									</c:if>
								</p>
									<!-- 답글쓰기(대댓글은 불가) -->
								<c:if test="${replyVo.step==0}">
									<button class="btRereply">답글쓰기</button>
								</c:if>
							</div>
						</div><!-- 등록된 댓글 끝-->
					</div>
						
						<!--  대댓글 등록-->
					<div class="reReplyForm" id="${replyVo.groupNo}reReplyForm" style="padding-left:30px">
						<form name="frmReReply" method="post" action="<c:url value='/board/detail/reReply'/>">
<!-- 접속계정정보 처리  변경
<input type="hidden" name="userId" value="${sessionScope.userId}" />
<input type="hidden" name="nickname" value="${sessionScope.nickname}" />
-->
<input type="hidden" name="userId" value="testUser3" />
<input type="hidden" name="nickname" value="testNick3" />
<input type="hidden" name="boardNo" value="${param.boardNo }" />
<input type="hidden" name="groupNo" value="${replyVo.groupNo }" />
<input type="hidden" name="step" value="${replyVo.step }">
<input type="hidden" name="sortNo" value="${replyVo.sortNo }">
							<div class="form-group">
								<h5 class="comments-title">댓글</h5>
								<textarea class="comments form-control" name="replyContent" placeholder="댓글을 입력하세요"></textarea>
								<button class="btn btn-theme comments_write" type="submit">
									<i class="fas fa-edit"></i> 등록
								</button>
							</div>
						</form>
					</div>
					<!--대댓등 등록양식 끝-->
			</c:if>
		</div>
	</c:forEach>	
</c:if>
<!-- 댓글리스트 종료 -->
						</div>
						<!--  -->
					</div>
				</div>
			</div>


		</div>
		<!-- /row -->
	</div>

</section>
<%@ include file="../inc/bottom.jsp"%>
