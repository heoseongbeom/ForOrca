package com.orca.kim.schedule.model.service;

import java.util.ArrayList;

import com.orca.kim.schedule.model.vo.Schedule;

public interface ScheduleService {

	// schedule 페이지 fullcaledar 일정 조회  
	ArrayList<Schedule> ajaxSelectScheduleList();
	
	// schedule 페이지 insert
	int insertSchedule(Schedule s);
	
	// schedule 페이지 dropEvent ajax
	int scheduleDropAjax(Schedule s);
	
	// schedule 페이지 fullcalendar detail 수정
	int updateScheduleDetail(Schedule s);
}
