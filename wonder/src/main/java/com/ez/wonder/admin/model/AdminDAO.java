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
	int deleteExpert(int memNo);
	List<ProductVO> selectNonApprovalList(SearchVO searchVo);
	int deleteForm(int formNo);
	int getTotalRecord(SearchVO searchVo);
	
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

	ArrayList<SaleVO> countPaymethod();
	ArrayList<SaleVO> salesPerMonth();
	
	List<FormVo> selectForm();
}
