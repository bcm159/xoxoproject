package com.xoxoproject.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {

	@GetMapping("/hotdog")
	public String menu() {
		return "/menu/hotdog";
	}
	
	@GetMapping("/coffee")
	public String coffee() {
		return "/menu/coffee";
	}
	
	@GetMapping("/beverage")
	public String beverage() {
		return "/menu/beverage";
	}
	
	@GetMapping("/sidemenu")
	public String sidemenu() {
		return "/menu/sidemenu";
	}
}
