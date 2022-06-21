package com.ez.wonder.form.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FormVo {
	private int formNo;
	private String userId;
	private String pUserId;
	private int pdNo;
	private String formTitle;
	private String formContent;
	private Timestamp formRegdate;
	private int price;
	private String payFlag;
	private String orderstart;
	private String orderend;
}
