package com.orca.kim.schedule.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.orca.kim.schedule.model.vo.Schedule;

@Repository
public class ScheduleDao {
	
	// schedule 페이지 fullcaledar 일정 조회 
	public ArrayList<Schedule> ajaxSelectScheduleList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("scheduleMapper.ajaxSelectScheduleList");
	}

}
