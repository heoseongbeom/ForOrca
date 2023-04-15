package com.orca.kim.schedule.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.orca.kim.schedule.model.service.ScheduleService;
import com.orca.kim.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService sService;
	
	// schedule 페이지 이동 컨트롤러
	@RequestMapping("schedule.sc")
	public String schedultPage() {
		return "schedule/schedule";
	}
	
	// schedule 페이지 fullcaledar 일정 조회 ajax 컨트롤러
	@ResponseBody
	@RequestMapping(value="scheduleSelect.sc", produces="application/json; charset=UTF-8")
	public List<Map<String, Object>> ajaxSelectScheduleList() {
	     ArrayList<Schedule> list = sService.ajaxSelectScheduleList();
	     
	     List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
	     Map<String, Object> map = new HashMap<String, Object>();
	     
	     
	     for (int i = 0; i < list.size(); i++) {
	    	 	map.put("no", list.get(i).getScheNo());
	            map.put("title", list.get(i).getScheTitle());
	            map.put("description", list.get(i).getScheDescription());
	            map.put("start", list.get(i).getScheDateStart());
	            map.put("end", list.get(i).getScheDateEnd());
	            map.put("color", list.get(i).getScheColor());
	            map.put("status", list.get(i).getScheStatus());
	            map.put("exp", list.get(i).getScheStatusExp());
	            mapList.add(map);
	            map = new HashMap<String, Object>();
	        }
		return mapList;
	}
	
}
