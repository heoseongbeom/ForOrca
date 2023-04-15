package com.orca.kim.schedule.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Schedule {
	
	private int scheNo;
	private String scheTitle;
	private String scheDescription;
	private String scheDateStart;
	private String scheDateEnd;
	private String scheColor;
	private String scheStatus;
	private String scheStatusExp;

}
