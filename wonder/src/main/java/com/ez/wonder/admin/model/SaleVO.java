package com.ez.wonder.admin.model;

import java.security.Timestamp;

import lombok.Data;

@Data
public class SaleVO {
	private int payNo;
	private String payMethod; 
	private int price;
	private Timestamp regdate; 
	private int formNo;
}
