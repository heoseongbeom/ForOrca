package com.orca.kim.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString 
public class Member {

	private String memNo;
	private String memName;
	private String memEmail;	
	private String memPwd;
	private String memInstarId;
	private Date memEnrollDate;
	private String memState;

}
