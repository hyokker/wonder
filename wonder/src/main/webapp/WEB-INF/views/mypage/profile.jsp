<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="incSide.jsp" %>
<script type="text/javascript">
	$(function(){  
		 var fileTarget = $('#profileUpload');
		  fileTarget.on('change', function(){  // 값이 변경되면
		    if(window.FileReader){  // modern browser
		      var filename = $(this)[0].files[0].name;
		    } 
		    else {  // old IE
		      var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
		    }
		    console.log(filename);
		    // 추출한 파일명 삽입
		    $(this).siblings('.upload_name').val(filename);
		  });
		  
		  //preview image 
		    var imgTarget = $('.preview-image #profileUpload');
		    imgTarget.on('change', function(){
		        var parent = $(this).parent();
		        parent.children('.upload-display').remove();
		        $('.upload-display').remove();
		        
		        if(window.FileReader){
		            //image 파일만
		            if (!$(this)[0].files[0].type.match(/image\//)) return;
		            
		            var reader = new FileReader();
		            reader.onload = function(e){
		                var src = e.target.result;
		                parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
		                $('#profile_preview').append('<div class="upload-display"><div class="upload-thumb-wrap" id="profile_preview_img"><img src="'+src+'" class="upload-thumb"></div></div>');
		            }
		            reader.readAsDataURL($(this)[0].files[0]);
		        }else{
		            $(this)[0].select();
		            $(this)[0].blur();
		            var imgSrc = document.selection.createRange().text;
		            parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
		            $('#profile_preview').append('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
		            var img = $(this).siblings('.upload-display').find('img');
		            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
		        }
		    });

		   

		$('#submitBt').click(function(){
			if(!confirm('정보를 수정하시겠습니까?')){
				return false;
			}
		});
		
		if(${vo.type=='일반회원'}){
			$('.form-row div').hide();
			$('.generalMember').show();
		}
		
		/* $('select').niceSelect(); */
	});
</script>
<input type="hidden" id="pageCheck" value="profile">

<script src="<c:url value='/js/jquery.nice-select.js' />"></script>
<link href="<c:url value='/css/mypage.css'/>" rel="stylesheet">
<link href="<c:url value='/css/nice-select.css' />" rel="stylesheet">
						<div class="col-lg-9 col-md-8 col-sm-12">
							<div class="dashboard-body">
							
								<div class="dashboard-wraper">
									<form name="frmProfile" method="post" action="<c:url value='/mypage/profile' />">
								
									<!-- Basic Information -->
									<div class="frm_submit_block">	
										<h4>나의 계정 정보</h4>
										<div class="frm_submit_wrap">
											<div class="form-row"> <!-- 기준디브 -->
											
												<div class="form-group col-md-6 generalMember">
													<label>이름</label>
													<input type="text" class="form-control profile_disabled" value="${vo.name }" disabled="disabled">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>가입일</label>
													<input type="text" class="form-control profile_disabled" 
														value="<fmt:formatDate value="${vo.regdate }" pattern="yyyy년 MM월 dd일" />" disabled="disabled">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>회원분류</label>
													<input type="text" class="form-control profile_disabled" value="${vo.type }" disabled="disabled">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>이메일</label>
													<input type="email" class="form-control" name="email" value="${vo.email }">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>닉네임</label>
													<input type="text" class="form-control" name="nickname" value="${vo.nickname }">
												</div>
												
												<div class="form-group col-md-6 generalMember">
													<label>연락처</label>
													<input type="text" class="form-control" name="tel" value="${vo.tel }">
												</div>
												

												
												<div class="form-group col-md-6">
													<label>전공</label>
													<input type="text" class="form-control" value="컴퓨터공학과">
												</div>
												
												<div class="form-group col-md-6">
													<label>학력</label>
													<input type="text" class="form-control" value="이젠대학교 공학석사">
												</div> 
												
												<div class="form-group col-md-6">
													<label>은행명</label>
													<input type="text" class="form-control" value="하나은행">
												</div> 
												
												<div class="form-group col-md-6">
													<label>계좌번호 (하이픈" - "을 빼고 입력해주세요)</label>
													<input type="text" class="form-control" value="395-111111-11111">
												</div> 
												
												<div class="form-group col-md-12">
													<label>보유 자격증</label>
													<input type="text" class="form-control" value="정보처리기사">
												</div> 
												
												<div class="form-group col-md-6">
													<label>완료된 작업 건수</label>
													<input type="text" class="form-control profile_disabled" value="13건" disabled="disabled">
												</div> 
												
												<div class="form-group col-md-4">
													<label>개발 경력</label>
													<select id="bage" class="form-control">
														<option value="">경력을 선택하세요</option>
														<option value="1">0 - 1년</option>
														<option value="2" selected="selected">1 - 3년</option>
														<option value="3">3 - 5년</option>
														<option value="4">5 - 10년</option>
														<option value="5">10년+</option>
													</select>
												</div>
												
												<script type="text/javascript">
													$(function(){ /* 체크한 언어이름 라벨에 넣는 제이쿼리 */
														$('.usableLangCheck li input[type=checkbox]').each(function(idx, item){
															$(this).change(function(){
																var lang = $(this).next().text();
																var text = $('#usableLanguage').val();
																var first = text.substr(0,1); 
																text = text.replace(", ,",",");
																
																
																if(first==" " || first==","){
																	var text=text.substr(1,text.length);
																	console.warn(text);
																	$('#usableLanguage').val(text);
																}
																
																if($(this).prop("checked")){ /* 체크상태라면 다음라벨값을 인풋에 넣는다 */
																	if(text==""){
																		$('#usableLanguage').val(text+lang);
																	}else{
																		$('#usableLanguage').val(text+','+lang);
																	}
																}else if(!$(this).prop("checked")){ 
																	/* 체크를 풀면 다음레발값을 인풋에서 지우고 남은 쉼표도 제거한다 */
																	var afterText = text.replace(lang,"");
																	var afterText = afterText.replace(",,",",");
																	$('#usableLanguage').val(afterText);
																}
															});
														});
													});
												
												</script>
												
												
												<div class="form-group col-md-12">
													<label>개발 가능 언어</label>
													<div class="o-features">
														<ul class="no-ul-list third-row usableLangCheck">
															<li>
																<input id="a-1" class="checkbox-custom" name="a-1" type="checkbox">
																<label for="a-1" class="checkbox-custom-label">C </label>
															</li>
															<li>
																<input id="a-2" class="checkbox-custom" name="a-2" type="checkbox">
																<label for="a-2" class="checkbox-custom-label">C#</label>
															</li>
															<li>
																<input id="a-3" class="checkbox-custom" name="a-3" type="checkbox">
																<label for="a-3" class="checkbox-custom-label">C++</label>
															</li>
															<li>
																<input id="a-4" class="checkbox-custom" name="a-4" type="checkbox">
																<label for="a-4" class="checkbox-custom-label">CSS</label>
															</li>
															<li>
																<input id="a-5" class="checkbox-custom" name="a-5" type="checkbox">
																<label for="a-5" class="checkbox-custom-label">HTML</label>
															</li>
															<li>
																<input id="a-6" class="checkbox-custom" name="a-6" type="checkbox">
																<label for="a-6" class="checkbox-custom-label">Java</label>
															</li>
															<li>
																<input id="a-7" class="checkbox-custom" name="a-7" type="checkbox">
																<label for="a-7" class="checkbox-custom-label">JavaScript</label>
															</li>
															<li>
																<input id="a-8" class="checkbox-custom" name="a-8" type="checkbox">
																<label for="a-8" class="checkbox-custom-label">JSP</label>
															</li>
															<li>
																<input id="a-9" class="checkbox-custom" name="a-9" type="checkbox">
																<label for="a-9" class="checkbox-custom-label">Lua</label>
															</li>
															<li>
																<input id="a-10" class="checkbox-custom" name="a-10" type="checkbox">
																<label for="a-10" class="checkbox-custom-label">Node.js</label>
															</li>
															<li>
																<input id="a-11" class="checkbox-custom" name="a-11" type="checkbox">
																<label for="a-11" class="checkbox-custom-label">Spring</label>
															</li>
															<li>
																<input id="a-12" class="checkbox-custom" name="a-12" type="checkbox">
																<label for="a-12" class="checkbox-custom-label">Vue.js</label>
															</li>
														</ul>
													</div>
													<input type="text" name="usableLanguage" id="usableLanguage"  style="width:100%">
												</div>
												<div class="form-group col-md-12">
													<label>소개</label>
													<textarea class="form-control">무조건 남보다 나은 결과물과 서비스를 제공하는것이 저의 목표입니다.

우수한 퀄리티와 다양한 기능을 개발하여 합리적인 금액으로 납품해드리고있습니다 
사후 서비스까지 책임지는 저에게 맡겨주세요</textarea>
												</div>	
												
												
												<div class="form-group col-md-12">
												<br>
												<div class="uploadBoxWrap">
													<label>프로필 사진 (150x150 사이즈의 이미지 파일을 업로드를 권장합니다)</label><br>
														<div class="uploadBox">
															<div class="uploadBox_inner">
																<label class="uploadBox_inner_p" for="profileUpload">프로필 사진<br>업로드</label>
															</div>
	
															<div class="uploadBox_innerRight  preview-image">
																<input type="hidden" class="upload_name" value="" disabled="disabled">
																<input type="file" id="profileUpload"> <!-- file -->
															</div>
	
														</div>
														
														<div class="uploadBox" id="uploadBox2">
															<div class="uploadBox_inner">
																<label class="uploadBox_inner_v">프로필 사진<br>미리보기</label>
															</div>
	
															<div class="uploadBox_innerRight  preview-image" id="profile_preview" >
																<input type="hidden">
															</div>
	
														</div>
													</div>
												</div>	

												
											</div>
										</div>
									</div>
									
									<div class="frm_submit_block">	
										<!-- <h4>Social Accounts</h4> -->
										<div class="frm_submit_wrap">
											<div class="form-row">
											
												<!-- <div class="form-group col-md-6">
													<label>Facebook</label>
													<input type="text" class="form-control" value="https://facebook.com/">
												</div>
												
												<div class="form-group col-md-6">
													<label>Twitter</label>
													<input type="email" class="form-control" value="https://twitter.com/">
												</div>
												
												<div class="form-group col-md-6">
													<label>Google Plus</label>
													<input type="text" class="form-control" value="https://googleplus.com">
												</div>
												
												<div class="form-group col-md-6">
													<label>LinkedIn</label>
													<input type="text" class="form-control" value="https://linkedin.com/">
												</div> -->
												
												<div class="form-group col-lg-12 col-md-12 mt-4 generalMember">
													<button class="btn btn-theme btn-lg " type="submit" id="submitBt">변경사항 적용</button>
												</div>
												
											</div>
										</div>
									</div>
									</form>
								</div>
							
							</div>
						</div>
						
						<input type="button" value="일반회원"/>
						<input type="button" value="전문가"/>
					</div>
				</div>
			</section>
			<!-- ============================ User Dashboard End ================================== -->
			

			
<%@ include file="../inc/bottom.jsp" %>