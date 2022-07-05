package com.ez.wonder.pd.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.ez.wonder.noneDup.model.NoneDupVO;

import lombok.Data;

@Data
public class PdList extends PdListVO {

	PdDetailVO pdDetail = new PdDetailVO();
	List<PdImageVO> pdImages = new ArrayList<PdImageVO>();
	
	public PdList() {
		super();
	}
	
	public PdList(PdListVO item) {
		if(item != null) {
			super.setPdNo(item.getPdNo());
			super.setUserId(item.getUserId());
			super.setCateType(item.getCateType());
			super.setPdTitle(item.getPdTitle());
			super.setPdContent(item.getPdContent());
			super.setRegdate(item.getRegdate());
			super.setDelType(item.getDelType());
			super.setReadCount(item.getReadCount());
			super.setLang(item.getLang());
			super.setFrame(item.getFrame());
			super.setDupFlag(item.getDupFlag());
		}
	}
}
