package com.orca.kim.contact.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orca.kim.contact.model.dao.ContactDao;
import com.orca.kim.contact.model.vo.Contact;

@Service
public class ContactServiceImpl implements ContactService{
	
	@Autowired
	private ContactDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Contact selectContact() {
		return cDao.selectContact(sqlSession);
	}

}
