<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
<script type="text/javascript"
	src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<title>wonder - 자유게시판 상세보기</title>

<section class="gray">

	<div class="container">

		<!-- row Start -->
		<div class="row">

			<div class="col-lg-8 col-md-12">
				<div class="property_block_wrap">

					<div class="property_block_wrap_header">
						<div class="title">
							<h3 class="property_block_title">
								<em class="board_category">자유게시판</em> 1번 게시글입니다
							</h3>
						</div>
						<div class="register_info right">
							<!-- span>${vo.name}</span -->
							<span class=""><i class="ti-user theme-cl">testUser</i></span> |
							<!-- span>${vo.regdate}</span -->
							<span class=""><i class="ti-calendar"> 2022. 6. 15.
									18:30</i></span> |
							<!-- span>${vo.readcount}</span -->
							<span class="view">조회수:2,989</span> | <span class=""><i
								class="fa fa-share">공유하기</i></span>
						</div>
						<hr>
					</div>
					<div class="block-body">
						<div class="right">
							<span class="upfile">첨부파일</span>
							<c:if test="${!empty vo.fileName }">
								<span> <a
									href="<c:url value='/reBoard/download?no=${param.boardNo}&fileName=${vo.fileName}'/>">
										${fileInfo} </a></span>
								<span>다운 : ${vo.downCount }</span>
							</c:if>
						</div>
						<%pageContext.setAttribute("newLine", "\r\n");%>
						<div class="lastDiv">
							<p>(예시)1번 게시글입니다</p>
							<p class="content">${fn:replace(vo.content, newLine, "<br>")}</p>
						</div>
					</div>
					<hr>
					<div class="center">
						<button class="btn btn-theme" type="button" id=""
							onclick="location.href='<c:url value='board/edit?boardNo=${param.boardNo}'/>'">
							<i class="fa fa-pen-nib"></i> 수정
						</button>
						<button class="btn btn-theme" type="button" id="btdelete"
							onclick="location.href='<c:url value='board/delete?boardNo=${param.boardNo}&groupNo=${vo.groupNo }&step=${vo.step }&fileName=${vo.fileName }'/>'">
							<i class="fas fa-trash"></i> 삭제
						</button>
						<button class="btn btn-theme" type="button" id="btreboard"
							onclick="location.href='<c:url value='board/reply?boardNo=${param.boardNo}'/>'">답글</button>
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
