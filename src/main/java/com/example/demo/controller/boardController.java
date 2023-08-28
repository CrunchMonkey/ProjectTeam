package com.example.demo.controller;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class boardController {
	
	@GetMapping(value = "afsafasf/")
	public String test() throws Exception {
		String jsp = "main";
		return jsp;
	}
	
	
}
//@GetMapping(value = "/")
//@ResponseBody
//public JSONObject test() throws Exception {
//	JSONObject obj = new JSONObject();
//	JSONParser parser = new JSONParser();
//	obj = (JSONObject) parser.parse("{\"레모나\" : 12}");
//	return obj;
//}



