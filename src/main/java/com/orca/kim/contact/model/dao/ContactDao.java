package com.orca.kim.contact.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.contact.model.vo.Contact;

@Repository
public class ContactDao {
	
	// contact 페이지 select 기능
	public Contact selectContact(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("contactMapper.selectContact");
	}

}
