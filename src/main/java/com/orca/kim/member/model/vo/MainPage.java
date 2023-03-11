package com.orca.kim.member.model.vo;

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
public class MainPage {

	private String mainInstarAddress;
	private String mainAdminName;
	private String mainAdminIntro;
	private String mainPhotoOrigin;
	private String mainPhotoChange;
}
