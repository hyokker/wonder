<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/board.css'/>" />
<title>wonder - 자유게시판 상세보기</title>

<section class="gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-12">
				<div class="property_block_wrap">
					<div class="property_block_wrap_header">
					<!-- 제목 -->
						<div class="title">
							<h3 class="property_block_title">
								<c:choose>
									<c:when test="${vo.cateType=='N'}">
										<em class="board_category notice">공지</em> 
									</c:when>
									<c:otherwise>
										<em class="board_category">일반</em> 
									</c:otherwise>
								</c:choose>
								${vo.boardTitle}
							</h3>
						</div>
						<div class="register_info right">
							<span class=""><i class="ti-user theme-cl"> ${vo.nickname}</i></span> |
							<span class=""><i class="ti-calendar">
							<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
								</i></span> |
							<span><em class="ic ic_view"></em>${vo.readCount}</span> |
							<span class=""><i class="fa fa-share"> 공유</i></span>
							
<em class="ic ic_more"></em>							
						</div>
						<hr>
					</div>
					<div class="block-body">
						<div class="right">
							<span class="upfile">첨부파일</span>
							<c:if test="${!empty vo.fileName }">
								<span> 
									<a href=
"<c:url value='/board/download?boardNo=${param.boardNo}&fileName=${vo.fileName}'/>">
										${fileInfo}
									</a></span>
									<!-- 
								<span>다운 : ${vo.downCount}</span>
								 -->
							</c:if>
						</div>
						<%pageContext.setAttribute("newLine", "\r\n");%>
						<div class="lastDiv">
							<p class="content">${fn:replace(vo.boardContent, newLine, "<br>")}</p>
						</div>
					</div>
					<hr>
					<div class="flex-end">
						<button class="btn btn-theme" type="button" id=""
							onclick="location.href='<c:url value='board/edit?boardNo=${param.boardNo}'/>'">
							<i class="fa fa-pen-nib"></i> 수정
						</button>
						<button class="btn btn-theme" type="button" id="btdelete"
							onclick="location.href='<c:url value='board/delete?boardNo=${param.boardNo}&fileName=${vo.fileName }'/>'">
							<i class="fas fa-trash"></i> 삭제
						</button>
						<button class="btn btn-theme" type="button" id="btlist"
							onclick="location.href='<c:url value='board/list'/>'">
							<span class="ti-view-list"></span> 목록
						</button>
					</div>
				</div>

			</div>


		</div>
		<!-- /row -->

	</div>

</section>
<%@ include file="../inc/bottom.jsp"%>
