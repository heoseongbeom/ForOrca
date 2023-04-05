package com.orca.kim.portfolio.model.vo;

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
public class Portfolio {
	
	private int portNo;
	private String portText;
	private String portOriginPhoto;
	private String portChangePhoto;
	private String portCategory;
	

}
