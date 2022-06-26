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
import org.springframework.web.multipart.MultipartFile;

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
	public void mypage_dashboard(HttpServletRequest request,Model model) { //효건님이 로그인으로 세션넘기는거 만드시면 바꿔야함!!! @@@@@@@@@@@@@@@@@@@@@
		logger.info("대시보드 페이지");
		
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
			@ModelAttribute ExpertVO expertVo, @RequestParam("portfolioFile[]") MultipartFile portfolio, HttpServletRequest request, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("userId");
		memberVo.setUserId(userId);
		logger.info("멤버프로필 수정 처리, memberVo={}",memberVo);
		logger.info("멤버프로필 수정 처리, portfolio={}",portfolio.getOriginalFilename());
		
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
					
						//프로필사진 올리는부분
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
		
		logger.info("프로필 페이지 memVo={}",memVo);
		
		model.addAttribute("expertVo", vo);
		model.addAttribute("memVo",memVo);
		
		return "/mypage/portfolio";
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
	
	@RequestMapping("/changePwd")
	public void mypage_changePwd(HttpSession session,Model model) {
		logger.info("암호 변경 페이지");
		
		String userId=(String) session.getAttribute("userId");
		MemberVO vo = mypageService.selectMemberById(userId);
		logger.info("프로필 페이지 vo={}",vo);
		
		model.addAttribute("vo",vo);
	}
}
