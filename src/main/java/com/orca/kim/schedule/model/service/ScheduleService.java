package com.orca.kim.schedule.model.service;

import java.util.ArrayList;

import com.orca.kim.schedule.model.vo.Schedule;

public interface ScheduleService {

	// schedule 페이지 fullcaledar 일정 조회  
	ArrayList<Schedule> ajaxSelectScheduleList();
}
