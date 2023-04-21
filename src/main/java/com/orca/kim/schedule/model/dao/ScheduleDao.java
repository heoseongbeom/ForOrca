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
	
	// schedule 페이지 eventDrop ajax
	public int scheduleDropAjax(Schedule s, SqlSessionTemplate sqlSession) {
		return sqlSession.update("scheduleMapper.scheduleDropAjax", s);
	}
	
	// schedule 페이지 fullcalendar detail 수정
	public int updateScheduleDetail(Schedule s, SqlSessionTemplate sqlSession) {
		return sqlSession.update("scheduleMapper.updateScheduleDetail", s);
	}

}
