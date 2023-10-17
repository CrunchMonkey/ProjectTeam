package com.example.demo.controller;

import org.json.simple.*;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

import com.example.demo.model.raidBoardModel;
import com.example.demo.service.mainService;

@RestController
public class mainController {
	
	@Autowired
	mainService mainService;
	
	//모든 레이드 게시판 글
	@GetMapping(value = "/getRaidBoardList")
	public JSONArray getRaidBoardList(raidBoardModel vueModel) throws Exception {
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = new JSONArray();
		JSONArray resultArray = new JSONArray();
		
		raidBoardModel model = new raidBoardModel();
		model.setPagingNum("1");
		ArrayList<raidBoardModel> boardList = mainService.getRaidBoardList(model);
		for(int i=0; i<boardList.size(); i++) {
			JSONObject tempObj = new JSONObject();
			raidBoardModel tempModel = boardList.get(i);
			
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
			tempObj.put("tagDivFir", tempModel.getTagDivFir()); //태그(태그1)
			tempObj.put("tagDivSec", tempModel.getTagDivSec()); //태그(태그2)
			tempObj.put("tagDivThr", tempModel.getTagDivThr()); //태그(태그3)
			tempObj.put("title", tempModel.getTitle()); //글제목
			tempObj.put("raidDivCd", tempModel.getRaidDivCd()); //레이드 구분 코드
			tempObj.put("raidDivNm", tempModel.getRaidDivNm()); //레이드 구분 명
			tempObj.put("viewCount", tempModel.getViewCount()); //조회수
			
			jsonArray.add(tempObj);
			
			if(i == boardList.size() - 1 || jsonArray.size() == 4) {
				resultArray.add(jsonArray);
				jsonArray = new JSONArray();
			}
		}
		return resultArray;
	}
	
	@GetMapping(value = "/getRaidHotBoardList")
	public JSONArray getRaidHotBoardList() throws Exception {
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = new JSONArray();
		JSONArray resultArray = new JSONArray();
		raidBoardModel model = new raidBoardModel();
		model.setPagingNum("1");
		
		ArrayList<raidBoardModel> boardHotList = mainService.getRaidHotBoardList(model);
		for(int i=0; i<boardHotList.size(); i++) {
			JSONObject tempObj = new JSONObject();
			raidBoardModel tempModel = boardHotList.get(i);
			
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
			tempObj.put("tagDivFir", tempModel.getTagDivFir()); //태그(태그1,태그2,태그3...)
			tempObj.put("tagDivSec", tempModel.getTagDivSec()); //태그(태그1,태그2,태그3...)
			tempObj.put("tagDivThr", tempModel.getTagDivThr()); //태그(태그1,태그2,태그3...)
			tempObj.put("title", tempModel.getTitle()); //글제목
			tempObj.put("raidDivdCd", tempModel.getRaidDivCd()); //레이드 구분 코드
			tempObj.put("raidDivdNm", tempModel.getRaidDivNm()); //레이드 구분 명
			tempObj.put("viewCount", tempModel.getViewCount()); //조회수
			
			jsonArray.add(tempObj);
			
			if(i == boardHotList.size() - 1 || jsonArray.size() == 4) {
				resultArray.add(jsonArray);
				jsonArray = new JSONArray();
			}
		}
		return resultArray;
	}
	
	@PostMapping(value = "/test")
	public void test(@RequestBody String str) {
		System.out.println(str);
	}
}


