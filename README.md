<div align="center">   

<img width="1265" alt="wonder_main" src="https://user-images.githubusercontent.com/105181325/180354050-83e6cb06-571d-4687-bc1a-6e740961edbc.png">


# Wonder
   
### BackEnd   
<img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=Java&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Jstl-007396?style=for-the-badge&logo=jstl&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Oracle-red?style=for-the-badge&logo=oracle&logoColor=white"/></a>
<img src="https://img.shields.io/badge/SqlDeveloper-548294?style=for-the-badge&logo=sqldeveloper&logoColor=white"/></a>
<img src="https://img.shields.io/badge/MyBatis-black?style=for-the-badge&logo=bybatis&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black"/></a>
<img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=white"/></a>   
### FrontEnd   
<img src="https://img.shields.io/badge/Html5-E34F26?style=for-the-badge&logo=Html5&logoColor=white"/></a>
<img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/></a>
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"/></a>
<img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white"/></a>   
### Common   
<img src="https://img.shields.io/badge/kakao-FFCD00?style=for-the-badge&logo=kakao&logoColor=black"/></a>
<img src="https://img.shields.io/badge/Three.js-000000?style=for-the-badge&logo=Three.js&logoColor=white"/></a>
<img src="https://img.shields.io/badge/chart.js-FF6384?style=for-the-badge&logo=chart.js&logoColor=white"/></a>
<img src="https://img.shields.io/badge/sheet.js-007396?style=for-the-badge&logo=Java&logoColor=white"/></a>
<img src="https://img.shields.io/badge/DATA.go.kr-007396?style=for-the-badge&logo=Java&logoColor=white"/></a>
<img src="https://img.shields.io/badge/iamport-007396?style=for-the-badge&logo=Java&logoColor=white"/></a>



</div>

***
# 📌 프로젝트 개요

- 프로젝트 명 : Wonder
- 프리랜서(개발자, 디자이너 등)들과 구매자(의뢰인)의 원활한 거래를 돕는 프리랜서 중개 웹 사이트
- 프로젝트 기간 : 2022.05.30 ~ 2022.07.18
- 사이트 개요   
> 코로나로 인한 패러다임의 변화.
> 코로나 이후로 프리랜서 중개 플랫폼의 주가가 심싱치 않다는 기사가 다수 존재하며, 기업들이 프리랜서를 고용하려는 수요가 증가했으며,
재택근무를 하는 정규직 근로자들도 부업으로 프리랜서 활동을 늘리고 있다. 특히 IT기술과 함께자란 밀레니얼 세대가 점차 사회에 진출하게 되면 그 숫자는 더욱 늘게 될 것이다. 




   
***
# 📌 기능 설명

- [1. 메인 페이지 화면 구현](https://github.com/hyokker/wonder/main/%EA%B5%AC%ED%98%84%EA%B8%B0%EB%8A%A5%EC%84%A4%EB%AA%85/%EA%B5%AC%ED%98%84%EA%B8%B0%EB%8A%A5.md)
- 로그인 기능 구현, 로그인 시 세션 저장 기능 구현   

```java
   @PostMapping("/member/login")
	public String login_post(@ModelAttribute MemberVO vo, 
			HttpServletRequest request,
			HttpServletResponse response, Model model) {
		logger.info("로그인 처리, 파라미터 vo={}", vo);
		
		
		int result=memberService.checkLogin(vo.getUserId(), vo.getPwd());
		logger.info("로그인 처리 결과 result={}", result);
		//public
		
		String msg="로그인 처리 실패", url="/";
		if(result==MemberService.LOGIN_OK) {
			//회원정보 조회
			MemberVO memVo=memberService.selectByUserid(vo.getUserId());
			logger.info("로그인 처리-회원정보 조회결과 memVo={}", memVo);
			
			//[1] session에 저장
			HttpSession session=request.getSession();
			session.setAttribute("userId", vo.getUserId());
			session.setAttribute("userName", memVo.getName());
			session.setAttribute("type", memVo.getType());
			session.setAttribute("LoginType", "normal");

			logger.info("유저 아이디, vo.getUserId={}", vo.getUserId());
			logger.info("회원 이름, memVo.getName={}", memVo.getName());
			logger.info("유저 타입, memVo.getType={}", memVo.getType());
			msg=memVo.getUserId()+"님 로그인되었습니다.";
			url="/";
		}else if(result==MemberService.DISAGREE_PWD) {	
			msg="비밀번호가 일치하지 않습니다.";
		}else if(result==MemberService.NONE_USERID) {
			msg="해당 아이디가 존재하지 않습니다.";			
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}
```

- 회원가입 기능 구현, 회원 가입 시, Spring Sequrity 의 BcryptPasswordEncoder 를 이용한 비밀번호 암호화 기능 구현
- 카카오 로그인 API 연동을 통한 카카오톡 ID, DB에 저장
- 아이디 찾기 (ajax로 구현), 비밀번호 찾기(ajax를 통해 이메일로 임시 비밀번호 발송)
- 관리자 로그인 구현, 로그인 시 세션 저장 기능 구현
- 각종 뷰페이지 구현(개인정보 처리방침, 이용약관, FAQ 등)
- 고객 문의(contactUs) 페이지에서 EmailSender를 통한 이메일 전송 기능 구현
- 고객 문의(contackUs) 페이지에서 google 지도 API 이용
- QNA(질문 답변) 게시판 CRUD 구현(CkEditor API 이용), 
- 메인 페이지 최근 등록된 상품 목록 노출


