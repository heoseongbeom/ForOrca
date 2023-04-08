package com.orca.kim.contact.model.service;

import com.orca.kim.contact.model.vo.Contact;

public interface ContactService {

	// contact 페이지 select 기능
	Contact selectContact();
	
	// contactUpdate 페이지 update 기능
	int updateContact(Contact c);
	
}
