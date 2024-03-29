package com.orca.kim.schedule.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orca.kim.schedule.model.dao.ScheduleDao;
import com.orca.kim.schedule.model.vo.Schedule;

@Service
public class ScheduleServiceImpl implements ScheduleService{
	
	@Autowired
	private ScheduleDao sDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// schedule 페이지 fullcaledar 일정 조회 
	@Override
	public ArrayList<Schedule> ajaxSelectScheduleList(){
		return sDao.ajaxSelectScheduleList(sqlSession);
	}
	
	// scheduleClient 페이지 fullcalendar 일정 조회
	@Override
	public ArrayList<Schedule> ajaxSelectScheduleClientList(){
		return sDao.ajaxSelectScheduleClientList(sqlSession);
	}
	
	// schedule 페이지 insert
	@Override
	public int insertSchedule(Schedule s) {
		return sDao.insertSchedule(s, sqlSession);
	}
	
	// schedule 페이지 eventDrop
	@Override
	public int scheduleDropAjax(Schedule s) {
		return sDao.scheduleDropAjax(s, sqlSession);
	}
	
	// schedule 페이지 fullcalendar detail 수정
	@Override
	public int updateScheduleDetail(Schedule s) {
		return sDao.updateScheduleDetail(s, sqlSession);
	}
	
	// schedule 페이지 delete
	@Override
	public int deleteSchedule(int scheNo) {
		return sDao.deleteSchedule(scheNo, sqlSession);
	}

}
