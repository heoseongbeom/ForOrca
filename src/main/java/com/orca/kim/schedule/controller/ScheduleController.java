package com.orca.kim.schedule.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
	
	// scheduleClient 페이지 이동 컨트롤러
	@RequestMapping("scheduleClient.sc")
	public String scheduleClientPage() {
		return "schedule/scheduleClient";
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
	
	// scheduleClient 페이지 fullcalendar 일정 조회 ajax 컨트롤러
	@ResponseBody
	@RequestMapping(value="scheduleClientSelect.sc", produces="application/json; charset=UTF-8")
	public List<Map<String, Object>> ajaxSelectScheduleClientList(){
		ArrayList<Schedule> list = sService.ajaxSelectScheduleClientList();
		
		List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();

		for (int i = 0; i < list.size(); i++) {
			map.put("no", list.get(i).getScheNo());
			map.put("start", list.get(i).getScheDateStart());
            map.put("end", list.get(i).getScheDateEnd());
            map.put("status", list.get(i).getScheStatus());
            map.put("exp", list.get(i).getScheStatusExp());
            mapList.add(map);
            map = new HashMap<String, Object>();
		}
		return mapList;
	}
	
	// schedule 페이지 insert 컨트롤러
	@RequestMapping("schduleInsert.sc")
	public String insertSchedule(Schedule s, HttpSession session) {
		int result = sService.insertSchedule(s);

		if(result > 0) {
			session.setAttribute("alertTitle", "Registration Complete");
			session.setAttribute("alertMsg", "일정 등록 성공");
			return "redirect:schedule.sc";
		}else {
			session.setAttribute("alertTitle", "Registration Fail");
			session.setAttribute("alertMsg", "일정 등록 실패");
			return "redirect/";
		}
	}
	
	// schedule 페이지 eventDrop ajax 컨트롤러
	@ResponseBody
	@RequestMapping(value="scheduleDropAjax.sc", produces="application/json; charset=UTF-8")
	public String scheduleDropAjax(Schedule s) {
		int result = sService.scheduleDropAjax(s);

		if(result > 0) {
			return new Gson().toJson("success");
		}else {
			return new Gson().toJson("fail");
		}
	}
	
	// schedule 페이지 fullcalendar detail 수정 컨트롤러
	@RequestMapping("scheduleUpdate.sc")
	public String updateScheduleDetail(Schedule s, HttpSession session) {
		
		int result = sService.updateScheduleDetail(s);

		if(result > 0) {
			session.setAttribute("alertTitle", "Update Complete");
			session.setAttribute("alertMsg", "수정 성공");
			return "redirect:schedule.sc";
		}else {
			session.setAttribute("alertTitle", "Update Fail");
			session.setAttribute("alertMsg", "수정 실패");
			return "redirect/";
		}
	}
	
	
	// schedule 페이지 delete 컨트롤러
	@RequestMapping("scheDelete.sc")
	public String deleteSchedule(int no, HttpSession session) {
		
		int result = sService.deleteSchedule(no);

		if(result > 0) {
			session.setAttribute("alertTitle", "Delete Complete");
			session.setAttribute("alertMsg", "삭제 성공");
			return "redirect:schedule.sc";
		}else {
			session.setAttribute("alertTitle", "Delete Fail");
			session.setAttribute("alertMsg", "삭제 실패");
			return "redirect/";
		}
	}
	
	
	
	
	
	
	
	
	
}
