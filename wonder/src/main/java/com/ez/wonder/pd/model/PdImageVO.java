package com.ez.wonder.pd.model;
import lombok.Data;

@Data
public class PdImageVO {
	private int PdImgNo;
	private int PdNo;
	private String FileName;
	private String OriginalFileName;
	private long FileSize;
	private String FileType;
}
