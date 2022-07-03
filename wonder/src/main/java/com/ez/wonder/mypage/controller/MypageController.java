package com.ez.wonder.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.mail.Multipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ez.wonder.common.ConstUtil;
import com.ez.wonder.common.FileUploadUtil;
import com.ez.wonder.member.model.ExpertImageVO;
import com.ez.wonder.member.model.ExpertVO;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.mypage.model.MypageService;
import com.ez.wonder.skill.model.FrameworkVO;
import com.ez.wonder.skill.model.LanguageVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	private final MypageService mypageService;
	private final FileUploadUtil fileUploadUtil;
	
	@RequestMapping("/incSide")
	public void mypage_incSide(HttpSession session, Model model) {
		logger.info("사이드메뉴 페이지");
		String userId=(String) session.getAttribute("userId");
		
		ExpertImageVO ExpertProfileVo = mypageService.selectExpertProfileById(userId);
		logger.info("업로드된 프로필 파일 profileVo={}",ExpertProfileVo);
		
		MemberVO memVo = mypageService.selectMemberById(userId);
		logger.info("로그인중인 유저 memberVo={}",memVo );
		
		model.addAttribute("profileVo",ExpertProfileVo);
		model.addAttribute("memVo",memVo);
	}
	
	@RequestMapping("/dashboard")
	public String mypage_dashboard(HttpServletRequest request,HttpSession session,Model model) { //효건님이 로그인으로 세션넘기는거 만드시면 바꿔야함!!! @@@@@@@@@@@@@@@@@@@@@
		logger.info("대시보드 페이지");
		
		String userId=(String) session.getAttribute("userId");
		if(userId==null) {
			String msg="로그인해야 이용하실 수 있습니다";
			String url="/";
			
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			
			return "/common/message";  //테스트용으로 잠궈놨음! 나중에 풀것
		}
		
		return "/mypage/dashboard";
		
	}
	
	@RequestMapping("/dashboard/general")
	public String mypage_dashboard_general(HttpServletRequest request, Model model) {
		MemberVO vo = mypageService.selectMemberByNo(1);
		HttpSession session = request.getSession();
		session.setAttribute("userId", vo.getUserId());
		session.setAttribute("pwd", vo.getPwd());
		
		model.addAttribute("vo",vo);
		
		return "/mypage/dashboard";
	}
	@RequestMapping("/dashboard/free")
	public String mypage_dashboard_free(HttpServletRequest request, Model model) {
		MemberVO vo = mypageService.selectMemberByNo(2);
		HttpSession session = request.getSession();
		session.setAttribute("userId", vo.getUserId());
		session.setAttribute("pwd", vo.getPwd());
		
		model.addAttribute("vo",vo);
		
		return "/mypage/dashboard";
	}
	
	@GetMapping("/profile")
	public void mypage_profile_get(HttpSession session, Model model) {
		logger.info("프로필 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO memVo = mypageService.selectMemberById(userId);
		String type = memVo.getType();

		//세션아이디가 없을때(로그인 안되어있을때) 로그인창으로 이동시키는것 추가해야함 (테스트시에는 없음)

		ExpertVO vo = null;
		if(type.equals("프리랜서")) {
			vo = mypageService.selectExpertById(userId);
			logger.info("프로필 페이지 프리랜서 정보조회 expertVo={}", vo);
			
			
			String language = vo.getLanguage();
			String[] langArr = language.split(",");
			logger.info("langArr.length={}",langArr.length);
			
			String framework = vo.getFramework();
			String[] frameArr = framework.split(",");
			logger.info("frameArr.length={}",frameArr.length);
			
			List<LanguageVO> langList = mypageService.selectAllLanguage();
			logger.info("langList.size={}",langList.size());

			List<FrameworkVO> frameList = mypageService.selectAllFramework();
			logger.info("langList.size={}",frameList.size());
			
			
			
			model.addAttribute("langArr",langArr); //전문가 사용가능 언어
			model.addAttribute("frameArr",frameArr); //전문가 사용가능 프레임워크
			model.addAttribute("langList",langList); //전체 언어
			model.addAttribute("frameList",frameList); //전체 프레임워크
			
		}
		logger.info("프로필 페이지 memVo={}",memVo);
		
		model.addAttribute("expertVo", vo);
		model.addAttribute("memVo",memVo);
	}
	
	@PostMapping("/profile")
	public String mypage_profile_post(@ModelAttribute ExpertImageVO profileVo ,@ModelAttribute MemberVO memberVo, 
			@ModelAttribute ExpertVO expertVo,  HttpServletRequest request, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("userId");
		memberVo.setUserId(userId);
		logger.info("멤버프로필 수정 처리, memberVo={}",memberVo);
		int cnt=mypageService.updateMember(memberVo);
		logger.info("멤버프로필 업데이트 결과, cnt={}",cnt);
		
		int check = mypageService.checkFree(userId);
		logger.info("프리랜서 확인 1이면 프리랜서, check={}", check);
		int freeCnt=0;
		
		
		String fileName="", originFileName="";
		long fileSize=0;
		List<Map<String, Object>> fileList=null;
		
		if(check>0) {
			expertVo.setUserId(userId);
			freeCnt = mypageService.updateFree(expertVo);
			logger.info("프리랜서 업데이트 결과, freeCnt={}, expertVo={}", freeCnt, expertVo);
			
			//파일 업로드
			try {
				fileList = fileUploadUtil.profileUpload(request, ConstUtil.EXPERT_PROFILE_IMAGE);
				logger.info("fileList 사이즈 ={}",fileList.size());
				if(fileList.size()!=0 && !fileList.isEmpty()) {
					
					for(Map<String, Object> fileMap : fileList) {
						originFileName=(String) fileMap.get("originalFileName");
						fileName=(String) fileMap.get("fileName");
						fileSize=(long)fileMap.get("fileSize");
						logger.info("파일 업로드 성공, fileName={}, fileSize={}",fileName, fileSize);
					
						//프로필사진 DB로 넣는부분
						profileVo.setUserId(userId);
						profileVo.setFileName(fileName);
						profileVo.setOriginalFileName(originFileName);
						profileVo.setFileSize(fileSize);
						profileVo.setFileType("PROFILE"); //체크용임 실재로는 xml에서 PROFILE 상수로 들어감
						
						int profileCnt = mypageService.insertExpertProfile(profileVo);
						logger.info("전문가사진 vo, profileVo={}",profileVo);
						logger.info("파일 업로드 완료 profileCnt={}", profileCnt);
						
						//이전파일이름
						//메소드를 count(*)갯수로 바꾸고, (2이상이 나올경우 expert_img_no가 가장 작은값 삭제) 이걸 반복해서 2이하까지
						int checkCountProfile = mypageService.checkExpertProfileById(userId);
						logger.info("현재 프로필사진 갯수={}",checkCountProfile);
						if(checkCountProfile>1) {
							while(true) {
								int deleteDupProfileCnt = mypageService.deleteDupExpertProfile(userId);
								int checkCount = mypageService.checkExpertProfileById(userId);
								logger.info("중복 프로필 사진 삭제 결과 cnt={}, 남은 프로필사진 갯수={}",deleteDupProfileCnt,checkCount);
								if(checkCount==1) {
									break;
								}
							}
						}
					} //for
				}//if
					
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		} //전문가용 if종료
		
		
		
		String msg="멤버프로필 수정 실패", url="/mypage/profile";
		if(check==0) {
			if(cnt>0) {
				msg="프로필 수정 성공";
			}
		}else if(check>0) {
			if(freeCnt>0) {
				msg="프로필 수정 성공";
			}
		}
		
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "/common/message";
	}
	
	@GetMapping("/portfolio")
	public String mypage_portfolio_get(HttpSession session, Model model) {
		logger.info("전문가용 포트폴리오 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO memVo = mypageService.selectMemberById(userId);
		String type = memVo.getType();

		//세션아이디가 없을때(로그인 안되어있을때) 로그인창으로 이동시키는것 추가해야함 (테스트시에는 없음)

		ExpertVO vo = null;
		
		if(type.equals("프리랜서")) {
			vo = mypageService.selectExpertById(userId);
			logger.info("프로필 페이지 프리랜서 정보조회 expertVo={}", vo);
		}else {
			String msg="일반회원은 접근할 수 없는 페이지입니다", url="/mypage/profile";
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
			return "/common/message";
			
		}
		
		//포트폴리오 이미지 list
		List<ExpertImageVO> list = mypageService.selectExpertPortfolioById(userId);

		logger.info("포트폴리오 리스트사이즈={}",list.size());
		logger.info("프로필 페이지 memVo={}",memVo);
		
		model.addAttribute("list", list);
		model.addAttribute("expertVo", vo);
		model.addAttribute("memVo",memVo);
		
		return "/mypage/portfolio";
	}
	
	@PostMapping("/portfolio")
	public String mypage_portfolio_post(@RequestParam(required = false) String reviewProtfolioName,
			HttpServletRequest request,	HttpSession session, Model model) {
		
		MultipartHttpServletRequest mtfRequest = (MultipartHttpServletRequest)request;
		String userId = (String)session.getAttribute("userId");
		List<MultipartFile> fileList = mtfRequest.getFiles("portfolioFile");
		logger.info("포트폴리오 등록 처리 fileList.size={}, 접속중인 유저 아이디 ={}",fileList.size(),userId);
		logger.info("테스트={}",reviewProtfolioName);
		
		String uploadPath = fileUploadUtil.getUploadPath(mtfRequest, ConstUtil.EXPERT_PORTFOLIO_IMAGE);

		int index=0;
		int profileCnt=0;
		
		String msg="멤버프로필 수정 실패", url="/mypage/portfolio";
		//기존포트폴리오 삭제처리
		if(!reviewProtfolioName.equals("") && !reviewProtfolioName.isEmpty()) { //파일업로드를 했을경우 (1이상)
			int delCnt = mypageService.deletePortfolio();
				logger.info("기존 포트폴리오 삭제 성공, cnt={}",delCnt);
		
				//포트폴리오 업로드처리
				for(MultipartFile mf : fileList) {
					String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		            long fileSize = mf.getSize(); // 파일 사이즈
		
		            logger.info("originFileName={} ", originFileName);
		            logger.info("fileSize={}", fileSize);
		            
		            //순수 파일명만 구하기 => a
		    		int idx = originFileName.lastIndexOf(".");
		    		String fileNm=originFileName.substring(0,idx); //a
		    		
		    		//확장자 구하기
		    		String ext = originFileName.substring(idx); //.txt
		            String safeFile = "PORTFOLIO_"+index+"_" + originFileName+ System.currentTimeMillis()+ext;
		            index++;
		            try {
		                mf.transferTo(new File(uploadPath,safeFile));
		            } catch (IllegalStateException e) {
		                e.printStackTrace();
		            } catch (IOException e) {
		                e.printStackTrace();
		            }
		            
		            
		            ExpertImageVO portfolioVo = new ExpertImageVO();
		            //프로필사진 DB로 넣는부분
		            portfolioVo.setUserId(userId);
		            portfolioVo.setFileName(safeFile);
		            portfolioVo.setOriginalFileName(originFileName);
		            portfolioVo.setFileSize(fileSize);
		            portfolioVo.setFileType("PROFILE"); //체크용임 실재로는 xml에서 PROFILE 상수로 들어감
					
					profileCnt = mypageService.insertExpertPorfolio(portfolioVo);
					logger.info("전문가사진 vo, profileVo={}",portfolioVo);
					logger.info("파일 업로드 완료 profileCnt={}", profileCnt);
					
					if(profileCnt>0) {
						msg="포트폴리오 수정 성공";
					}else {
						msg="포트폴리오 수정 성공";
					}
		        }
		}else {
			msg="파일을 선택해야합니다";
		}
		
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "/common/message";
	}
	

	@RequestMapping("/bookmark")
	public void mypage_bookmark(HttpSession session,Model model) {
		logger.info("찜(북마크) 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@RequestMapping("/transaction")
	public void mypage_transaction(HttpSession session,Model model) {
		logger.info("거래 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@RequestMapping("/chatting")
	public void mypage_chatting(HttpSession session,Model model) {
		logger.info("채팅 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		
		model.addAttribute("vo",vo);
	}
	
	@GetMapping("/changePwd")
	public void mypage_changePwd_get(HttpSession session,Model model) {
		logger.info("암호 변경 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
	
	@ResponseBody
	@RequestMapping("/checkBefore")
	public boolean mypage_checkPwd_ajax(HttpSession session,@RequestParam String beforePwd) {
		String userId=(String) session.getAttribute("userId");
		logger.info("암호체크, 유저아이디={}, 입력한 기존 암호={}",userId, beforePwd);
		
		int result = mypageService.checkPwd(userId, beforePwd);
		logger.info("비밀번호 중복체크 결과 1성공, 2실패, 3없음 result={}",result);
		
		boolean bool = false;
		if(result==MypageService.LOGIN_SUCCESS) {
			bool=true;
		}else if(result==MypageService.DISAGREE_PWD) {
			bool=false;
		}
		
		return bool;
	}
	
	@PostMapping("/changePwd")
	public String mypage_changePwd_post(@RequestParam String newPwd,HttpSession session,Model model) {
		logger.info("암호 변경 처리, 파라미터 newPwd={}",newPwd);
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("현재 로그인중인 아이디 vo={}",vo);
		
		
		String msg="비밀번호 수정 실패", url="/mypage/changePwd";
		vo.setPwd(newPwd);
		logger.info("수정예정 비밀번호 vo.pwd={}",vo.getPwd());
		int pwdCnt = mypageService.updatePwd(vo);
		logger.info("삭제처리 완료 cnt={}",pwdCnt);
		if(pwdCnt>0) {
			msg="비밀번호 수정 성공!";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		
		return "/common/message";
		
		
	}
	
	@RequestMapping("/testChat")
	public String testChat(Model model) {
		logger.info("채팅테스트화면");
		
		return "/mypage/testChat"; 
	}
	
}
