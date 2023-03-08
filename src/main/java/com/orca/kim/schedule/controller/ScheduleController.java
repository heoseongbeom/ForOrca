package com.orca.kim.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScheduleController {
	
	@RequestMapping("schedule.me")
	public String schedultPage() {
		return "schedule/schedule";
	}
	
}
