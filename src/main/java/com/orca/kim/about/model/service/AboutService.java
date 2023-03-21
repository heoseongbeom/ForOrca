package com.orca.kim.about.model.service;

import com.orca.kim.about.model.vo.About;

public interface AboutService {
	
	// about, aboutUpdate 페이지 select 구문
	About selectAbout();
	
	// about 페이지 update구문
	int updateAbout(About a);

}
