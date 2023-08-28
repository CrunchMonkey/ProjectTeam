package com.example.demo.controller;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class mainController {
	
	@GetMapping(value = "/")
	public String mainBoard() throws Exception {
		String jsp = "main";
		return jsp;
	}
	
	@RequestMapping(value = "/test")
	@ResponseBody
	public String test() throws Exception {
		String jsp = "main";
		return "Hello World";
	}
}


