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
	
	// contact 페이지 select 기능
	@Override
	public Contact selectContact() {
		return cDao.selectContact(sqlSession);
	}
	
	@Override
	public int updateContact(Contact c) {
		return cDao.updateContact(c, sqlSession);
	}

}
