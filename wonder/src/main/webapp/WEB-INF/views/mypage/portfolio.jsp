<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="/mypage/incSide" />
<%-- <%@ include file="incSide.jsp" %> --%>
 
<script type="text/javascript">
	$(function(){
		    $("#portfolioUpload").on('change', function () {

		        //등록한 사진 갯수
		        var countFiles = $(this)[0].files.length;

		        var imgPath = $(this)[0].value;
		        var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
		        var image_holder = $("#image-holder");
		        image_holder.empty();
                $('#reviewProtfolioName').val(""); //파일 업로드 이름 미리보기칸 리셋


		        if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg" || extn == "") {
		            if (typeof (FileReader) != "undefined") {
						if(countFiles <=5){
			                //사진갯수만큼 for문
			                for (var i = 0; i < countFiles; i++) {
								var name = $(this)[0].files[i].name;
								var before = $('#reviewProtfolioName').val();
			                    var reader = new FileReader();
			                    reader.onload = function (e) {
			                        $("<img />", {
			                            "src": e.target.result,
			                                "class": "thumb-image"
			                        }).appendTo(image_holder);
			                    }
	
			                    image_holder.show();
			                    reader.readAsDataURL($(this)[0].files[i]);
			                    $('#reviewProtfolioName').val(before + ", " + name);
			                }
						}else{
			                alert("이미지는 최대 5개까지 올릴 수 있습니다.");
						}

		            } else {
		                alert("해당 브라우저에서 FileReader를 지원하지 않습니다.");
		            }
		        } else {
		            alert("이미지 파일만 등록할 수 있습니다.");
		        }
		    });
		    
		    
		    
			/* $('#portfolioUpload').change(function(){
				var parent = $(this).parent();
		        parent.children('.upload-portfolio').remove();
		        $('.upload-portfolio').remove();
		        var html="";
		        
		        if(window.FileReader){
		            //image 파일만
		            if (!$(this)[0].files[0].type.match(/image\//)) return;
		            
		            var reader = new FileReader();
		            reader.onload = function(e){
		                var src = e.target.result;
		                html += '<div class="upload-portfolio">';
			            html += '<div class="upload-thumb-wrap">'
			            html += '<img src="'+src+'" class="upload-thumb">';
			            html += '</div>';
			            html += '</div>';
		                
		                parent.append(html);
		            }
		            reader.readAsDataURL($(this)[0].files[0]);
		        }else{
		            $(this)[0].select();
		            $(this)[0].blur();
		            var imgSrc = document.selection.createRange().text;
					html += '<div class="upload-portfolio">';
					html += '<div class="upload-thumb-wrap">'
					html += '<img class="upload-thumb">';
					html += '</div>';
					html += '</div>';
		            parent.append(html);
		            var img = $(this).siblings('.upload-portfolio').find('img');
		            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
		        }
				 */
				
				
				
				
				        /* const target = document.getElementsByName('portfolioFile[]');
				        
				        var html = '';
				        $.each(target[0].files, function(index, file){
				            const fileName = file.name;
				            html += '<div class="file">';
				            html += '<img src="'+URL.createObjectURL(file)+'">'
				            html += '<span>'+fileName+'</span>';
				            html += '<span>기간 '+'<input type="text" style="width:250px" /></span>';
				            html += '<a href="#" id="removeImg">╳</a>';
				            html += '</div>';
				            const fileEx = fileName.slice(fileName.indexOf(".") + 1).toLowerCase();
				            if(fileEx != "jpg" && fileEx != "png" &&  fileEx != "gif" &&  fileEx != "bmp" && fileEx != "wmv" && fileEx != "mp4" && fileEx != "avi"){
				                alert("파일은 (jpg, png, gif, bmp, wmv, mp4, avi) 형식만 등록 가능합니다.");
				                resetFile();
				                return false;
				            }
				            $('.preview-image').html(html);
				        }); 
				    });*/

		   

		$('#submitBt').click(function(){
			if(!confirm('정보를 수정하시겠습니까?')){
				return false;
			}
		});
		
		/* $('select').niceSelect(); */
	
		
		/* 체크한 언어이름 인풋에 넣는 제이쿼리 */
		/*  $('.usableLangCheck li input[type=checkbox]').each(function(idx, item){ 
			$(this).change(function(){
				var lang = $(this).next().text();
				var text = $('#usableLanguage').val();
				var first = text.substr(0,1); 
				text = text.replace(", ,",",");
				
				
				if(first==" " || first==","){
					var text=text.substr(1,text.length);
					$('#usableLanguage').val(text);
				}
				
				if($(this).prop("checked")){  // 체크상태라면 다음라벨값을 인풋에 넣는다 
					if(text==""){
						$('#usableLanguage').val(text+lang);
					}else{
						$('#usableLanguage').val(text+','+lang);
					}
				}else if(!$(this).prop("checked")){ 
					// 체크를 풀면 다음레발값을 인풋에서 지우고 남은 쉼표도 제거한다 
					var afterText = text.replace(lang,"");
					var afterText = afterText.replace(",,",",");
					$('#usableLanguage').val(afterText);
				}
			});
		});  */
		
	});

</script>
<input type="hidden" id="pageCheck" value="portfolio">

<script src="<c:url value='/js/jquery.nice-select.js' />"></script>
<link href="<c:url value='/css/mypage.css'/>" rel="stylesheet">
<link href="<c:url value='/css/nice-select.css' />" rel="stylesheet">
						<div class="col-lg-9 col-md-8 col-sm-12">
							<div class="dashboard-body">
							
								<div class="dashboard-wraper">
									<form name="frmProfile" method="post" enctype="multipart/form-data" action="<c:url value='/mypage/profile' />">
								
									<!-- Basic Information -->
									<div class="frm_submit_block">	
										<h4>나의 포트폴리오 정보</h4>
										<div class="frm_submit_wrap">
											<div class="form-row"> <!-- 기준디브 -->
											
																		
												
												<div class="form-group col-md-12">
												<br>
												<div class="uploadBoxWrap">
													<label>포트폴리오 사진 (최대 5개의 이미지파일만 업로드할 수 있습니다)</label><br>
														<div class="uploadBox" style="width:100%">
															<div class="uploadBox_inner">
																<label class="uploadBox_inner_p" for="portfolioUpload">포트폴리오 사진<br>업로드</label>
															</div>
	
															<div class="uploadBox_innerRight  preview-image">
																<input type="hidden" class="upload_name" value="" disabled="disabled">
																<input type="file" id="portfolioUpload" name="portfolioFile[]" multiple="multiple"> <!-- file -->
															</div>
															<div id="image-holder">
															
															</div>
														</div>
														<br>
														<input type="text" id="reviewProtfolioName" style="width:100%">
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