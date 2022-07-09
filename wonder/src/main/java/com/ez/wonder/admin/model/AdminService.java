package com.ez.wonder.admin.model;

import java.util.ArrayList;
import java.util.List;

import com.ez.wonder.common.SearchVO;
import com.ez.wonder.form.model.FormVo;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.pd.model.ProductVO;

public interface AdminService {
	public static final int LOGIN_OK=1; //로그인 성공
	public static final int DISAGREE_PWD=2; //비밀번호 불일치
	public static final int NONE_USERID=3; //해당 아이디 없다
	
	public static final int USABLE_ID=0;
	public static final int UNUSABLE_ID=1; //존재하는 아이디

	List<MemberVO> selectMember(SearchVO searchVo);
	int deleteMember(int memNo);
	List<AdminVO> selectAdmin(SearchVO searchVo);
	int deleteSubAdmin(int adminNo);
	List<ProductVO> selectProduct(SearchVO searchVo);
	int deleteProduct(int pdNo);
	List<MemberVO> selectNonApprovalEx(SearchVO searchVo);
	int grantExpert(int memNo);
	int deleteExpert(String userId);
	List<ProductVO> selectNonApprovalList(SearchVO searchVo);
	int deleteForm(int formNo);
	int getMemTotalRecord(SearchVO searchVo);
	int getPdTotalRecord(SearchVO searchVo); 
	int getAdTotalRecord(SearchVO searchVo); 
	int getFormTotalRecord(SearchVO searchVo); 
	
	int dupAdminId(String adminId);
	AdminVO selectByAdminId(String adminId); //admin 아이디로 정보(vo)조회
	int checkLogin(String adminId, String adminPwd); //정보 수정시 아이디-비번 일치하는지 확인
	
	int updateAdmin(AdminVO adminVo);
	int insertAdmin(AdminVO adminVo);
	
	int sumAllSales();
	int monthlySales();
	int countMembers();
	int countExperts();
	int countProduct();
	int countPayment();
	
	ArrayList<PaymentVO> countPaymethod();
	
	List<FormVo> selectForm();
	List<PaymentVO> payChart();
}
