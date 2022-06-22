<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
<title>wonder - 자유게시판 상세보기</title>

<section class="gray">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8 col-md-12">
				<div class="property_block_wrap">
					<div class="">
						<!-- 제목 -->
						<div class="title">
							<h3 class="property_block_title">
								<a href="<c:url value='list'/>">자유게시판<span
									class="submenu-indicator"></span></a>
							</h3>
							<hr>
							<h4>
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
							<span class="black"><i class="ti-calendar">
									<fmt:formatDate value="${vo.regdate}"
										pattern="yyyy-MM-dd HH:mm:ss" />
							</i></span> | 
						<!--  조회수-->
							<span class="groay"><em class="ic ic_view"></em>${vo.readCount}</span> | 
						<!--  공유하기-->
							<span class=""><i class="fa fa-share"> 공유</i></span> <em
								class="ic ic_more"></em>
						</div>
						<hr>
					</div>
					<div class="block-body">
						<div class="right">
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
						<button class="btn btn-theme" type="button" id="btdelete"
							onclick="location.href='<c:url value='delete?boardNo=${param.boardNo}&fileName=${vo.fileName }'/>'">
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
							<form name="frmReply" method="post" action="">
								<div class="form-group">
									<h5 class="comments-title">댓글</h5>
									<textarea class="comments form-control"></textarea>
									<button class="btn btn-theme comments_write" type="submit">
										<i class="fas fa-edit"></i> 등록
									</button>
								</div>
							</form>

							<!-- 댓글 리스트 -->
							<div
								class="article_detail_wrapss single_article_wrap format-standard">
								<div class="comment-area">
									<div class="all-comments">

										<div class="comment-list">
											<ul>
												<li class="article_comments_wrap">
													<article>
														<div class="article_comments_thumb"></div>
														<div class="comment-details">
															<div class="comment-meta">
																<div class="comment-left-meta">
																	<span class="author-name">&nbsp;<i
																		class="ti-user theme-cl"> ${vo.nickname}</i></span> <span
																		class="comment-date">&nbsp;<fmt:formatDate
																			value="${vo.regdate}" type="both" />
																	</span>
																</div>
																<div class="comment-reply">
																	<p class="reply">
																		Excepteur sint occaecat cupidatat non proident, sunt
																		in culpa qui officia deserunt mollit anim laborumab.
																		perspiciatis unde omnis iste natus error. <a href="#"
																			role="button" class="comment_info_button flex">답글쓰기</a>
																	</p>
																</div>
															</div>

														</div>
													</article>
													<ul class="children">
														<li class="article_comments_wrap">
															<article>
																<div class="article_comments_thumb"></div>
																<div class="comment-details">
																	<div class="comment-meta">
																		<div class="comment-left-meta">
																			<h4 class="author-name">Rosalina Kelian</h4>
																			<div class="comment-date">19th May 2018</div>
																		</div>
																		<div class="comment-reply">
																			<a href="#" class="reply"><span class="icons"><i
																					class="ti-back-left"></i></span> Reply</a>
																		</div>
																	</div>
																	<div class="comment-text">
																		<p>Excepteur sint occaecat cupidatat non proident,
																			sunt in culpa qui officia deserunt mollit anim
																			laborumab. perspiciatis unde omnis iste natus error.</p>
																	</div>
																</div>
															</article>
															<ul class="children">
																<li class="article_comments_wrap">
																	<article>
																		<div class="article_comments_thumb">
																			<img src="https://via.placeholder.com/500x500" alt="">
																		</div>
																		<div class="comment-details">
																			<div class="comment-meta">
																				<div class="comment-left-meta">
																					<h4 class="author-name">Rosalina Kelian</h4>
																					<div class="comment-date">19th May 2018</div>
																				</div>
																				<div class="comment-reply">
																					<a href="#" class="reply"><span class="icons"><i
																							class="ti-back-left"></i></span> Reply</a>
																				</div>
																			</div>
																			<div class="comment-text">
																				<p>Excepteur sint occaecat cupidatat non
																					proident, sunt in culpa qui officia deserunt mollit
																					anim laborumab. perspiciatis unde omnis iste natus
																					error.</p>
																			</div>
																		</div>
																	</article>
																</li>
															</ul>
														</li>
													</ul>
												</li>
												<li class="article_comments_wrap">
													<article>
														<div class="article_comments_thumb">
															<img src="https://via.placeholder.com/500x500" alt="">
														</div>
														<div class="comment-details">
															<div class="comment-meta">
																<div class="comment-left-meta">
																	<h4 class="author-name">Rosalina Kelian</h4>
																	<div class="comment-date">19th May 2018</div>
																</div>
																<div class="comment-reply">
																	<a href="#" class="reply"><span class="icons"><i
																			class="ti-back-left"></i></span> Reply</a>
																</div>
															</div>
															<div class="comment-text">
																<p>Excepteur sint occaecat cupidatat non proident,
																	sunt in culpa qui officia deserunt mollit anim
																	laborumab. perspiciatis unde omnis iste natus error.</p>
															</div>
														</div>
													</article>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--  -->
					</div>
				</div>
			</div>


		</div>
		<!-- /row -->
	</div>

</section>
<%--@ include file="reply.jsp"--%>
<%@ include file="../inc/bottom.jsp"%>
