/* 회원 */
DROP TABLE MEMBER 
	CASCADE CONSTRAINTS;

/* 전문가정보 */
DROP TABLE EXPERT_INFO 
	CASCADE CONSTRAINTS;

/* 상품 */
DROP TABLE PRODUCT 
	CASCADE CONSTRAINTS;

/* 상품상세 */
DROP TABLE PD_DETAIL 
	CASCADE CONSTRAINTS;

/* 리뷰 */
DROP TABLE REVIEW 
	CASCADE CONSTRAINTS;

/* 게시판카테고리 */
DROP TABLE CATEGORY 
	CASCADE CONSTRAINTS;

/* 질문게시판 */
DROP TABLE QNA 
	CASCADE CONSTRAINTS;

/* 찜/리뷰 중복방지 */
DROP TABLE NONE_DUP 
	CASCADE CONSTRAINTS;

/* 결제테이블 */
DROP TABLE PAYMENT 
	CASCADE CONSTRAINTS;

/* 상품이미지 */
DROP TABLE PD_IMAGE 
	CASCADE CONSTRAINTS;

/* 의뢰서 */
DROP TABLE FORM 
	CASCADE CONSTRAINTS;

/* 전문가승인 */
DROP TABLE EXPERT_GRANT 
	CASCADE CONSTRAINTS;

/* 자유게시판 */
DROP TABLE BOARD 
	CASCADE CONSTRAINTS;

/* 관리자 */
DROP TABLE ADMIN 
	CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE REPLY 
	CASCADE CONSTRAINTS;

/* 채팅 */
DROP TABLE CHAT 
	CASCADE CONSTRAINTS;

/* 자료실 */
DROP TABLE DONE_PROJECT 
	CASCADE CONSTRAINTS;

/* 언어  */
DROP TABLE LANGUAGE 
	CASCADE CONSTRAINTS;

/* 프레임워크 */
DROP TABLE FRAMEWORK 
	CASCADE CONSTRAINTS;

/* 사이트이미지 */
DROP TABLE SITE_IMAGE 
	CASCADE CONSTRAINTS;

/* 전문가이미지 */
DROP TABLE EXPERT_IMAGE 
	CASCADE CONSTRAINTS;

/* 의뢰취소 */
DROP TABLE FORM_CALCLE 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE MEMBER (
	MEM_NO NUMBER NOT NULL, /* 회원번호 */
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	NAME VARCHAR2(50) NOT NULL, /* 이름 */
	PWD VARCHAR2(100) NOT NULL, /* 비밀번호 */
	NICKNAME VARCHAR2(50) NOT NULL, /* 닉네임 */
	EMAIL VARCHAR2(50) NOT NULL, /* 이메일 */
	TEL VARCHAR2(100), /* 연락처 */
	REGDATE DATE  DEFAULT SYSDATE, /* 등록일 */
	OUTDATE DATE, /* 탈퇴일 */
	TYPE VARCHAR2(20) DEFAULT '일반회원' NOT NULL /* 회원분류 */
);

CREATE UNIQUE INDEX PK_MEMBER
	ON MEMBER (
		USER_ID ASC
	);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			USER_ID
		);

/* 전문가정보 */
CREATE TABLE EXPERT_INFO (
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	MAJOR VARCHAR2(50), /* 전공 */
	CAREER CLOB, /* 경력 */
	GRADE CLOB, /* 학력 */
	BANK_NAME VARCHAR2(30), /* 은행명 */
	ACCOUNT_NO VARCHAR2(50), /* 계좌번호 */
	CERTIFICATE CLOB, /* 자격증 */
	SERVICABLE_TIME VARCHAR2(100), /* 연락가능시간 */
	INTRODUCTION CLOB, /* 소개 */
	APPROVAL VARCHAR2(20) DEFAULT 'N', /* 승인여부 */
	WORK_AMOUNT NUMBER, /* 작업수량 */
	LANG CLOB NOT NULL, /* 언어 */
	FRAME CLOB /* 프레임워크 */
);

CREATE UNIQUE INDEX PK_EXPERT_INFO
	ON EXPERT_INFO (
		USER_ID ASC
	);

ALTER TABLE EXPERT_INFO
	ADD
		CONSTRAINT PK_EXPERT_INFO
		PRIMARY KEY (
			USER_ID
		);

/* 상품 */
CREATE TABLE PRODUCT (
	PD_NO  NUMBER NOT NULL, /* 상품번호 */
	USER_ID VARCHAR2(100), /* 회원아이디 */
	CATE_TYPE  VARCHAR2(20), /* 카테고리종류 */
	PD_TITLE VARCHAR2(500) NOT NULL, /* 상품제목 */
	REGDATE DATE  DEFAULT SYSDATE, /* 등록일 */
	DEL_TYPE VARCHAR2(20) DEFAULT 'N', /* 삭제여부 */
	READ_COUNT NUMBER DEFAULT 0, /* 조회수 */
	LANG CLOB NOT NULL, /* 언어 */
	FRAME CLOB /* 프레임워크 */
);

CREATE UNIQUE INDEX PK_PRODUCT
	ON PRODUCT (
		PD_NO  ASC
	);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			PD_NO 
		);

/* 상품상세 */
CREATE TABLE PD_DETAIL (
	DETAIL_NO NUMBER NOT NULL, /* 상품상세번호 */
	PD_NO  NUMBER NOT NULL, /* 상품번호 */
	PD_TYPE VARCHAR(100), /* 상품타입 */
	PD_PRICE NUMBER, /* 상품가격 */
	PD_TERM NUMBER, /* 상품기한 */
	EDIT_COUNT NUMBER NOT NULL, /* 수정횟수 */
	SERVICE_EXPLANATION CLOB, /* 서비스설명 */
	EDIT_EXPLANATION CLOB, /* 수정설명 */
	COMMERCIAL VARCHAR2(100) DEFAULT 'N', /* 상업적이용 */
	CODE_SUPPLY VARCHAR2(100) DEFAULT 'N', /* 소스코드제공 */
	PAYMENT VARCHAR2(100) DEFAULT 'N', /* 결제기능 */
	CUSTOMIZE VARCHAR2(100) DEFAULT 'N' /* 맞춤디자인제공 */
);

CREATE UNIQUE INDEX PK_PD_DETAIL
	ON PD_DETAIL (
		DETAIL_NO ASC
	);

ALTER TABLE PD_DETAIL
	ADD
		CONSTRAINT PK_PD_DETAIL
		PRIMARY KEY (
			DETAIL_NO
		);

/* 리뷰 */
CREATE TABLE REVIEW (
	REVIEW_NO NUMBER NOT NULL, /* 리뷰번호 */
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	PD_NO  NUMBER NOT NULL, /* 상품번호 */
	REVIEW_TITLE VARCHAR2(150) NOT NULL, /* 리뷰제목 */
	REVIEW_CONTENT CLOB NOT NULL, /* 리뷰내용 */
	RATING NUMBER NOT NULL, /* 평점 */
	REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
	DEL_TYPE VARCHAR2(20) DEFAULT 'N' /* 삭제여부 */
);

CREATE UNIQUE INDEX PK_REVIEW
	ON REVIEW (
		REVIEW_NO ASC
	);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT PK_REVIEW
		PRIMARY KEY (
			REVIEW_NO
		);

/* 게시판카테고리 */
CREATE TABLE CATEGORY (
	CATE_NO NUMBER NOT NULL, /* 카테고리번호 */
	CATE_TYPE  VARCHAR2(20) NOT NULL, /* 카테고리종류 */
	CATE_NAME VARCHAR2(100) NOT NULL /* 카테고리명 */
);

CREATE UNIQUE INDEX PK_CATEGORY
	ON CATEGORY (
		CATE_TYPE  ASC
	);

ALTER TABLE CATEGORY
	ADD
		CONSTRAINT PK_CATEGORY
		PRIMARY KEY (
			CATE_TYPE 
		);

/* 질문게시판 */
CREATE TABLE QNA (
	QNA_NO NUMBER NOT NULL, /* 게시글번호 */
	CATE_TYPE VARCHAR2(20) NOT NULL, /* 카테고리종류 */
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	QNA_TITLE VARCHAR2(150) NOT NULL, /* 게시글제목 */
	QNA_CONTENT CLOB NOT NULL, /* 게시글내용 */
	QNA_REGDATE DATE  DEFAULT SYSDATE, /* 등록일 */
	READ_COUNT NUMBER DEFAULT 0, /* 조회수 */
	GROUP_NO NUMBER, /* 그룹번호 */
	STEP NUMBER DEFAULT 0, /* 답글단계 */
	SORT_NO NUMBER DEFAULT 0, /* 답글번호 */
	DEL_TYPE VARCHAR2(20) DEFAULT 'N', /* 삭제여부 */
	FILE_NAME VARCHAR2(150), /* 파일명 */
	ORIGINAL_FILE_NAME VARCHAR2(150), /* 원본파일명 */
	FILE_SIZE NUMBER /* 파일크기 */
);

CREATE UNIQUE INDEX PK_QNA
	ON QNA (
		QNA_NO ASC
	);

ALTER TABLE QNA
	ADD
		CONSTRAINT PK_QNA
		PRIMARY KEY (
			QNA_NO
		);

/* 찜/리뷰 중복방지 */
CREATE TABLE NONE_DUP (
	DUP_NO  NUMBER NOT NULL, /* 중복방지번호 */
	USER_ID VARCHAR2(100), /* 회원아이디 */
	PD_NO  NUMBER, /* 상품번호 */
	DUP_FLAG VARCHAR2(20) /* 중복타입 */
);

CREATE UNIQUE INDEX PK_NONE_DUP
	ON NONE_DUP (
		DUP_NO  ASC
	);

ALTER TABLE NONE_DUP
	ADD
		CONSTRAINT PK_NONE_DUP
		PRIMARY KEY (
			DUP_NO 
		);

/* 결제테이블 */
CREATE TABLE PAYMENT (
	PAY_NO NUMBER NOT NULL, /* 결제번호 */
	PAY_CODE VARCHAR2(100), /* 결제코드 */
	PAY_METHOD VARCHAR2(50) NOT NULL, /* 결제수단 */
	FORM_NO  NUMBER, /* 의뢰서번호 */
	PD_NAME VARCHAR2(100), /* 상품명 */
	PRICE NUMBER NOT NULL, /* 결제금액 */
	BUYER_NAME VARCHAR2(100), /* 구매자명 */
	BUYER_TEL VARCHAR2(100), /* 구매자연락처 */
	REGDATE DATE  DEFAULT SYSDATE /* 결제일 */
);

CREATE UNIQUE INDEX PK_PAYMENT
	ON PAYMENT (
		PAY_NO ASC
	);

ALTER TABLE PAYMENT
	ADD
		CONSTRAINT PK_PAYMENT
		PRIMARY KEY (
			PAY_NO
		);

/* 상품이미지 */
CREATE TABLE PD_IMAGE (
	PDIMG_NO NUMBER NOT NULL, /* 이미지번호 */
	PD_NO  NUMBER NOT NULL, /* 상품번호 */
	FILE_NAME VARCHAR2(100) NOT NULL, /* 파일명 */
	ORIGINAL_FILE_NAME CLOB NOT NULL, /* 원본파일명 */
	FILE_SIZE NUMBER NOT NULL, /* 파일크기 */
	FILE_TYPE VARCHAR2(20) NOT NULL /* 이미지타입 */
);

CREATE UNIQUE INDEX PK_PD_IMAGE
	ON PD_IMAGE (
		PD_NO  ASC
	);

ALTER TABLE PD_IMAGE
	ADD
		CONSTRAINT PK_PD_IMAGE
		PRIMARY KEY (
			PD_NO 
		);

/* 의뢰서 */
CREATE TABLE FORM (
	FORM_NO  NUMBER NOT NULL, /* 의뢰서번호 */
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	P_USER_ID  VARCHAR2(100) NOT NULL, /* 프리랜서아이디 */
	PD_NO  NUMBER, /* 상품번호 */
	FORM_TITLE VARCHAR2(150) NOT NULL, /* 제목 */
	FORM_CONTENT CLOB NOT NULL, /* 내용 */
	FORM_REGDATE DATE  DEFAULT SYSDATE, /* 등록일 */
	PRICE NUMBER, /* 금액 */
	PAY_FLAG  VARCHAR2(20) DEFAULT 'N', /* 결제여부 */
	ORDERSTART DATE, /* 시작일 */
	ORDEREND DATE /* 종료일 */
);

CREATE UNIQUE INDEX PK_FORM
	ON FORM (
		FORM_NO  ASC
	);

ALTER TABLE FORM
	ADD
		CONSTRAINT PK_FORM
		PRIMARY KEY (
			FORM_NO 
		);

/* 전문가승인 */
CREATE TABLE EXPERT_GRANT (
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	REGDATE DATE DEFAULT SYSDATE, /* 신청일 */
	GRANT_DATE DATE , /* 승인일 */
	GRANT_FLAG VARCHAR2(20) DEFAULT 'N' /* 승인여부 */
);

CREATE UNIQUE INDEX PK_EXPERT_GRANT
	ON EXPERT_GRANT (
		USER_ID ASC
	);

ALTER TABLE EXPERT_GRANT
	ADD
		CONSTRAINT PK_EXPERT_GRANT
		PRIMARY KEY (
			USER_ID
		);

/* 자유게시판 */
CREATE TABLE BOARD (
	BOARD_NO  NUMBER NOT NULL, /* 자유게시판번호 */
	CATE_TYPE  VARCHAR2(20) DEFAULT 'B' NOT NULL, /* 카테고리종류 */
	USER_ID VARCHAR2(100) DEFAULT 'N', /* 회원아이디 */
	ADMIN_ID VARCHAR2(70) DEFAULT 'N', /* 관리자아이디 */
	BOARD_TITLE VARCHAR2(150) NOT NULL, /* 제목 */
	BOARD_CONTENT CLOB NOT NULL, /* 내용 */
	DEL_TYPE VARCHAR2(20) DEFAULT 'N', /* 삭제여부 */
	REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
	READ_COUNT NUMBER DEFAULT 0, /* 조회수 */
	FILE_NAME VARCHAR2(100), /* 파일명 */
	ORIGINAL_FILE_NAME CLOB, /* 원본파일명 */
	FILE_SIZE NUMBER, /* 파일크기 */
	NICKNAME VARCHAR2(50) NOT NULL, /* 닉네임 */
	PWD VARCHAR2(20), /* 비밀번호 */
	TOTAL_COMMENT NUMBER DEFAULT 0 /* 댓글수 */
);

CREATE UNIQUE INDEX PK_BOARD
	ON BOARD (
		BOARD_NO  ASC
	);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD
		PRIMARY KEY (
			BOARD_NO 
		);

/* 관리자 */
CREATE TABLE ADMIN (
	ADMIN_NO NUMBER NOT NULL, /* 관리자번호 */
	ADMIN_ID VARCHAR2(70) NOT NULL, /* 관리자아이디 */
	ADMIN_PWD VARCHAR2(100) NOT NULL /* 비밀번호 */
);

CREATE UNIQUE INDEX PK_ADMIN
	ON ADMIN (
		ADMIN_ID ASC
	);

ALTER TABLE ADMIN
	ADD
		CONSTRAINT PK_ADMIN
		PRIMARY KEY (
			ADMIN_ID
		);

/* 댓글 */
CREATE TABLE REPLY (
	REPLY_NO NUMBER NOT NULL, /* 댓글번호 */
	BOARD_NO  NUMBER NOT NULL, /* 자유게시판번호 */
	USER_ID VARCHAR2(100) NOT NULL, /* 회원아이디 */
	REPLY_CONTENT CLOB NOT NULL, /* 댓글내용 */
	REPLY_REGDATE DATE  DEFAULT sysdate, /* 등록일 */
	GROUP_NO NUMBER, /* 그룹번호 */
	STEP NUMBER, /* 댓글단계 */
	SORT_NO NUMBER, /* 정렬번호 */
	DEL_TYPE VARCHAR2(20) DEFAULT 'N', /* 삭제여부 */
	NICKNAME VARCHAR2(50) /* 닉네임 */
);

CREATE UNIQUE INDEX PK_REPLY
	ON REPLY (
		REPLY_NO ASC
	);

ALTER TABLE REPLY
	ADD
		CONSTRAINT PK_REPLY
		PRIMARY KEY (
			REPLY_NO
		);

/* 채팅 */
CREATE TABLE CHAT (
	CHAT_NO NUMBER NOT NULL, /* 채팅번호 */
	S_USER_ID VARCHAR2(100) NOT NULL, /* 보낸회원아이디 */
	R_USER_ID VARCHAR2(100)  NOT NULL, /* 받은회원아이디 */
	CONTENT CLOB, /* 내용 */
	CHATROOM_STATUS VARCHAR2(10) DEFAULT 'O', /* 채팅방 상태 플래그 */
	CHECK_STATUS VARCHAR2(10) DEFAULT 'N', /* 메세지 상태 플래 */
	TIMESTAMP TIMESTAMP DEFAULT SYSTIMESTAMP /* 생성시간 */
);

CREATE UNIQUE INDEX PK_CHAT
	ON CHAT (
		CHAT_NO ASC
	);

ALTER TABLE CHAT
	ADD
		CONSTRAINT PK_CHAT
		PRIMARY KEY (
			CHAT_NO
		);

/* 자료실 */
CREATE TABLE DONE_PROJECT (
	FILE_NO NUMBER NOT NULL, /* 자료실번호 */
	USER_ID VARCHAR2(100), /* 회원아이디 */
	REGDATE DATE DEFAULT SYSDATE, /* 등록일 */
	MEMO CLOB, /* 메모 */
	FILE_NAME VARCHAR2(100), /* 파일명 */
	ORIGINAL_FILE_NAME CLOB, /* 원본파일명 */
	FILE_SIZE NUMBER /* 파일크기 */
);

CREATE UNIQUE INDEX PK_DONE_PROJECT
	ON DONE_PROJECT (
		FILE_NO ASC
	);

ALTER TABLE DONE_PROJECT
	ADD
		CONSTRAINT PK_DONE_PROJECT
		PRIMARY KEY (
			FILE_NO
		);

/* 언어  */
CREATE TABLE LANGUAGE (
	LANG_NO NUMBER NOT NULL, /* 언어번호 */
	LANG VARCHAR2(150) /* 언어 */
);

CREATE UNIQUE INDEX PK_LANGUAGE
	ON LANGUAGE (
		LANG_NO ASC
	);

ALTER TABLE LANGUAGE
	ADD
		CONSTRAINT PK_LANGUAGE
		PRIMARY KEY (
			LANG_NO
		);

/* 프레임워크 */
CREATE TABLE FRAMEWORK (
	FRAME_NO NUMBER NOT NULL, /* 프레임워크번호 */
	FRAME VARCHAR2(150) /* 프레임워크 */
);

CREATE UNIQUE INDEX PK_FRAMEWORK
	ON FRAMEWORK (
		FRAME_NO ASC
	);

ALTER TABLE FRAMEWORK
	ADD
		CONSTRAINT PK_FRAMEWORK
		PRIMARY KEY (
			FRAME_NO
		);

/* 사이트이미지 */
CREATE TABLE SITE_IMAGE (
	SITE_IMAGE_NO NUMBER, /* 사이트이미지번호 */
	ADMIN_ID VARCHAR2(70), /* 관리자아이디 */
	FILE_NAME VARCHAR2(100), /* 파일명 */
	ORIGINAL_FILE_NAME CLOB, /* 원본파일명 */
	FILE_SIZE NUMBER, /* 파일크기 */
	TYPE VARCHAR2(50), /* 타입 */
	REGDATE DATE DEFAULT SYSDATE /* 등록일 */
);

/* 전문가이미지 */
CREATE TABLE EXPERT_IMAGE (
	 EXPERT_IMG_NO NUMBER NOT NULL, /* 이미지번호 */
	USER_ID VARCHAR2(100), /* 회원아이디 */
	FILE_NAME VARCHAR2(100) NOT NULL, /* 파일명 */
	ORIGINAL_FILE_NAME CLOB NOT NULL, /* 원본파일명 */
	FILE_SIZE NUMBER NOT NULL, /* 파일크기 */
	FILE_TYPE VARCHAR2(20) NOT NULL /* 이미지타입 */
);

CREATE UNIQUE INDEX PK_EXPERT_IMAGE
	ON EXPERT_IMAGE (
		 EXPERT_IMG_NO ASC
	);

ALTER TABLE EXPERT_IMAGE
	ADD
		CONSTRAINT PK_EXPERT_IMAGE
		PRIMARY KEY (
			 EXPERT_IMG_NO
		);

/* 의뢰취소 */
CREATE TABLE FORM_CALCLE (
	F_CANCLE_NO NUMBER NOT NULL, /* 의뢰서취소번호 */
	FORM_NO NUMBER, /* 의뢰서번호 */
	C_REASON CLOB, /* 취소사유 */
	REGDATE DATE DEFAULT SYSDATE /* 신청날짜 */
);

CREATE UNIQUE INDEX PK_FORM_CALCLE
	ON FORM_CALCLE (
		F_CANCLE_NO ASC
	);

ALTER TABLE FORM_CALCLE
	ADD
		CONSTRAINT PK_FORM_CALCLE
		PRIMARY KEY (
			F_CANCLE_NO
		);

ALTER TABLE EXPERT_INFO
	ADD
		CONSTRAINT FK_MEMBER_TO_EXPERT_INFO
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		)
		ON DELETE CASCADE;

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_CATEGORY_TO_PRODUCT
		FOREIGN KEY (
			CATE_TYPE 
		)
		REFERENCES CATEGORY (
			CATE_TYPE 
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_EXPERT_INFO_TO_PRODUCT
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES EXPERT_INFO (
			USER_ID
		)
		ON DELETE CASCADE;

ALTER TABLE PD_DETAIL
	ADD
		CONSTRAINT FK_PRODUCT_TO_PD_DETAIL
		FOREIGN KEY (
			PD_NO 
		)
		REFERENCES PRODUCT (
			PD_NO 
		)
		ON DELETE CASCADE;

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_MEMBER_TO_REVIEW
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_PRODUCT_TO_REVIEW
		FOREIGN KEY (
			PD_NO 
		)
		REFERENCES PRODUCT (
			PD_NO 
		);

ALTER TABLE QNA
	ADD
		CONSTRAINT FK_MEMBER_TO_QNA
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		);

ALTER TABLE QNA
	ADD
		CONSTRAINT FK_CATEGORY_TO_QNA
		FOREIGN KEY (
			CATE_TYPE
		)
		REFERENCES CATEGORY (
			CATE_TYPE 
		);

ALTER TABLE NONE_DUP
	ADD
		CONSTRAINT FK_MEMBER_TO_NONE_DUP
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		)
		ON DELETE CASCADE;

ALTER TABLE NONE_DUP
	ADD
		CONSTRAINT FK_PRODUCT_TO_NONE_DUP
		FOREIGN KEY (
			PD_NO 
		)
		REFERENCES PRODUCT (
			PD_NO 
		)
		ON DELETE CASCADE;

ALTER TABLE PAYMENT
	ADD
		CONSTRAINT FK_FORM_TO_PAYMENT
		FOREIGN KEY (
			FORM_NO 
		)
		REFERENCES FORM (
			FORM_NO 
		);

ALTER TABLE PD_IMAGE
	ADD
		CONSTRAINT FK_PRODUCT_TO_PD_IMAGE
		FOREIGN KEY (
			PD_NO 
		)
		REFERENCES PRODUCT (
			PD_NO 
		)
		ON DELETE CASCADE;

ALTER TABLE FORM
	ADD
		CONSTRAINT FK_MEMBER_TO_FORM
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		);

ALTER TABLE FORM
	ADD
		CONSTRAINT FK_MEMBER_TO_FORM2
		FOREIGN KEY (
			P_USER_ID 
		)
		REFERENCES MEMBER (
			USER_ID
		);

ALTER TABLE FORM
	ADD
		CONSTRAINT FK_PRODUCT_TO_FORM
		FOREIGN KEY (
			PD_NO 
		)
		REFERENCES PRODUCT (
			PD_NO 
		);

ALTER TABLE EXPERT_GRANT
	ADD
		CONSTRAINT FK_MEMBER_TO_EXPERT_GRANT
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		)
		ON DELETE CASCADE;

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_CATEGORY_TO_BOARD
		FOREIGN KEY (
			CATE_TYPE 
		)
		REFERENCES CATEGORY (
			CATE_TYPE 
		);

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_MEMBER_TO_BOARD
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		);

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_ADMIN_TO_BOARD
		FOREIGN KEY (
			ADMIN_ID
		)
		REFERENCES ADMIN (
			ADMIN_ID
		);

ALTER TABLE REPLY
	ADD
		CONSTRAINT FK_MEMBER_TO_REPLY
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		)
		ON DELETE CASCADE;

ALTER TABLE REPLY
	ADD
		CONSTRAINT FK_BOARD_TO_REPLY
		FOREIGN KEY (
			BOARD_NO 
		)
		REFERENCES BOARD (
			BOARD_NO 
		)
		ON DELETE CASCADE;

ALTER TABLE DONE_PROJECT
	ADD
		CONSTRAINT FK_MEMBER_TO_DONE_PROJECT
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES MEMBER (
			USER_ID
		);

ALTER TABLE SITE_IMAGE
	ADD
		CONSTRAINT FK_ADMIN_TO_SITE_IMAGE
		FOREIGN KEY (
			ADMIN_ID
		)
		REFERENCES ADMIN (
			ADMIN_ID
		);

ALTER TABLE EXPERT_IMAGE
	ADD
		CONSTRAINT FK_EXPERT_INFO_TO_EXPERT_IMAGE
		FOREIGN KEY (
			USER_ID
		)
		REFERENCES EXPERT_INFO (
			USER_ID
		)
		ON DELETE CASCADE;

ALTER TABLE FORM_CALCLE
	ADD
		CONSTRAINT FK_FORM_TO_FORM_CALCLE
		FOREIGN KEY (
			FORM_NO
		)
		REFERENCES FORM (
			FORM_NO 
		);


create or replace view expertMemberView
as
select A.*, B.file_name, B.file_type from 
(select m.mem_no, e.*,  m.name, m.pwd, m.nickname, m.email, m.tel, m.regdate
from expert_info e join member m
on e.user_id=m.user_id)A left outer join expert_image B
on A.user_id=B.user_id;

create or replace view formConfirmView
as
select f.*, p.pd_type, p.pd_term, p.edit_count
from form f join pd_detail p
on f.pd_no=p.pd_no and f.price=p.pd_price;

create sequence MEMBER_seq
start with 1
increment by 1
nocache;

create sequence EXPERT_INFO_seq
start with 1
increment by 1
nocache;

create sequence PRODUCT_seq
start with 1
increment by 1
nocache;

create sequence PD_DETAIL_seq
start with 1
increment by 1
nocache;

create sequence REVIEW_seq
start with 1
increment by 1
nocache;

create sequence CATEGORY_seq
start with 1
increment by 1
nocache;

create sequence QNA_seq
start with 1
increment by 1
nocache;

create sequence NONE_DUP_seq
start with 1
increment by 1
nocache;

create sequence PAYMENT_seq
start with 1
increment by 1
nocache;

create sequence PD_IMAGE_seq
start with 1
increment by 1
nocache;

create sequence FORM_seq
start with 1
increment by 1
nocache;

create sequence EXPERT_GRANT_seq
start with 1
increment by 1
nocache;

create sequence BOARD_seq
start with 1
increment by 1
nocache;

create sequence ADMIN_seq
start with 1
increment by 1
nocache;

create sequence REPLY_seq
start with 1
increment by 1
nocache;

create sequence CHAT_seq
start with 1
increment by 1
nocache;

create sequence DONE_PROJECT_seq
start with 1
increment by 1
nocache;

create sequence LANGUAGE_seq
start with 1
increment by 1
nocache;

create sequence FRAMEWORK_seq
start with 1
increment by 1
nocache;

create sequence SITE_IMAGE_seq
start with 1
increment by 1
nocache;

create sequence EXPERT_IMAGE_seq
start with 1
increment by 1
nocache;

create sequence FORM_CALCLE_seq
start with 1
increment by 1
nocache;

insert into admin(admin_no, admin_id, admin_pwd)
values(ADMIN_SEQ.nextval, 'admin', 'a123');

insert into category(CATE_NO, CATE_TYPE, CATE_NAME)
values(category_seq.nextval, 'P', '상품게시판');

insert into category(CATE_NO, CATE_TYPE, CATE_NAME)
values(category_seq.nextval, 'Q', 'QNA게시판');

insert into category(CATE_NO, CATE_TYPE, CATE_NAME)
values(category_seq.nextval, 'A', 'QNA답변');

insert into language
valueS(LANGUAGE_SEQ.nextval, 'A#');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'ActionScript');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'AssemblyLanguage');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Autohotkey');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Autolt');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'C');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'C#');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'C++');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Clojure');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'COBOL');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'CSS');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Dart');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Delphi');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Elixir');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'F#');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Fortran');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Go');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Groovy');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'HTML');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Java');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'JavaScript');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'JSP');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Kotlin');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'LabVIEW');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Liquid');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Lua');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Node.js');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'ObjectPascal');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Objective-C');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Perl');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'PHP');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'PowerShell');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Processing');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Prolog');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'JavaScript');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Python');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'R');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Ruby');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Rust');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Sass');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Scala');

insert into language
valueS(LANGUAGE_SEQ.nextval, 'Scratch');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Solidity');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Swift');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'TypeScript');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Verilog');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'VisualBasic');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'VisualBasic.NET');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'Webassembly');
insert into language
valueS(LANGUAGE_SEQ.nextval, 'XML');

insert into framework
values(framework_SEQ.nextval, '.NET');
insert into framework
values(framework_SEQ.nextval, 'Angular');
insert into framework
values(framework_SEQ.nextval, 'AngularJS');
insert into framework
values(framework_SEQ.nextval, 'ASP');
insert into framework
values(framework_SEQ.nextval, 'ASP.NET');
insert into framework
values(framework_SEQ.nextval, 'Bootstrp');
insert into framework
values(framework_SEQ.nextval, 'Bulma');
insert into framework
values(framework_SEQ.nextval, 'Codelgniter');

insert into framework
values(framework_SEQ.nextval, 'Django');

insert into framework
values(framework_SEQ.nextval, 'Electron');
insert into framework
values(framework_SEQ.nextval, 'Express.js');
insert into framework
values(framework_SEQ.nextval, 'FastAPI');

insert into framework
values(framework_SEQ.nextval, 'Flask');

insert into framework
values(framework_SEQ.nextval, 'Flutter');

insert into framework
values(framework_SEQ.nextval, 'Foundation');
insert into framework
values(framework_SEQ.nextval, 'Framework7');
insert into framework
values(framework_SEQ.nextval, 'lonic');
insert into framework
values(framework_SEQ.nextval, 'Laminas');
insert into framework
values(framework_SEQ.nextval, 'Laravel');
insert into framework
values(framework_SEQ.nextval, 'Material-UI');
insert into framework
values(framework_SEQ.nextval, 'Materialize');
insert into framework
values(framework_SEQ.nextval, 'Next.js');
insert into framework
values(framework_SEQ.nextval, 'Qt');
insert into framework
values(framework_SEQ.nextval, 'ReactNative');
insert into framework
values(framework_SEQ.nextval, 'RubyonRails');
insert into framework
values(framework_SEQ.nextval, 'Spring');
insert into framework
values(framework_SEQ.nextval, 'Swing');
insert into framework
values(framework_SEQ.nextval, 'Vue.js');
insert into framework
values(framework_SEQ.nextval, 'WPF');
insert into framework
values(framework_SEQ.nextval, 'Xamarin');
insert into framework
values(framework_SEQ.nextval, '전자정부표준프레임워크');



commit;

select * from product;