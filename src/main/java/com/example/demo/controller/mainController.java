package com.example.demo.controller;

import org.json.simple.*;
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
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = new JSONArray();
		
		ArrayList<raidBoardModel> weekHotBoardList = mainService.selectAllBoardList();
		for(int i=0; i<weekHotBoardList.size(); i++) {
			JSONObject tempObj = new JSONObject();
			raidBoardModel tempModel = weekHotBoardList.get(i);
			
			tempObj.put("boardId", tempModel.getBoardId()); //게시글 ID
			tempObj.put("content", tempModel.getContent()); //게시글 내용
			tempObj.put("deadLine", tempModel.getDeadLine()); //마감일
			tempObj.put("defficultCd", tempModel.getDefficultCd()); //난이도 code
			tempObj.put("defficultNm", tempModel.getDefficultNm()); //난이도
			tempObj.put("discordUse", tempModel.getDiscordUse()); //디스코드 사용유무
			tempObj.put("dungeonDivCd", tempModel.getDungeonDivCd()); //던전 구분 code
			tempObj.put("dungeonDivNm", tempModel.getDungeonDivNm()); //던전 구분명
			tempObj.put("gateNum", tempModel.getGateNum());//관문
			tempObj.put("id", tempModel.getId()); //작성자 ID
			tempObj.put("partyUrl", tempModel.getPartyUrl()); //오픈채티방 또는 구글폼
			tempObj.put("personNum", tempModel.getPersonNum()); //모집인원
			tempObj.put("proDivCd", tempModel.getProDivCd()); //숙련도 code
			tempObj.put("proDivNm", tempModel.getProDivNm()); //숙련도
			tempObj.put("regDate", tempModel.getRegDate()); //작성일
			tempObj.put("startDate", tempModel.getStartDate()); //시작일
			tempObj.put("tagDiv", tempModel.getTagDiv()); //태그(태그1,태그2,태그3...)
			tempObj.put("title", tempModel.getTitle()); //글제목
			tempObj.put("raidDivdCd", tempModel.getRaidDivdCd()); //레이드 구분 코드
			tempObj.put("raidDivdNm", tempModel.getRaidDivdNm()); //레이드 구분 명
			
			jsonArray.add(tempObj);
		}
		
		model.addAttribute("allBoardData", jsonArray);
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


