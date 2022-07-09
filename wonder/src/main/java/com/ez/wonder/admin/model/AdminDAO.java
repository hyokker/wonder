package com.ez.wonder.admin.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ez.wonder.common.SearchVO;
import com.ez.wonder.form.model.FormVo;
import com.ez.wonder.member.model.MemberVO;
import com.ez.wonder.pd.model.ProductVO;

@Mapper
public interface AdminDAO {
	List<MemberVO> selectMember(SearchVO searchVo);
	int deleteMember(int memNo);
	List<AdminVO> selectAdmin(SearchVO searchVo);
	int deleteSubAdmin(int adminNo);
	List<ProductVO> selectProduct(SearchVO searchVo);
	int deleteProduct(int pdNo);
	List<MemberVO> selectNonApprovalEx(SearchVO searchVo);
	int grantExpert(int  memNo);
	int deleteExpert(String userId);
	List<ProductVO> selectNonApprovalList(SearchVO searchVo);
	int deleteForm(int formNo);
	int getMemTotalRecord(SearchVO searchVo); 
	int getPdTotalRecord(SearchVO searchVo); 
	int getAdTotalRecord(SearchVO searchVo); 
	int getFormTotalRecord(SearchVO searchVo); 
	
	int dupAdminId(String adminId);
	AdminVO selectByAdminId(String adminId);
	String selectPwd(String adminId);
	
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
