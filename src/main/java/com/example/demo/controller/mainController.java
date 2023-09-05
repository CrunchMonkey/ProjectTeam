package com.example.demo.controller;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.*;

import com.example.demo.model.raidBoardModel;
import com.example.demo.service.mainService;

@Controller
public class mainController {
	
	@Autowired
	mainService mainService;
	
	@GetMapping(value = "/")
	public String mainBoard(Model model) throws Exception {
		ArrayList<raidBoardModel> test = mainService.selectWeekHotBoardList();
		model.addAttribute("name", "{\"name\": \"식빵\"}");
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


