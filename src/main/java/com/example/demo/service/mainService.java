package com.example.demo.service;

import java.util.ArrayList;

import com.example.demo.model.raidBoardModel;

public interface mainService {
	//메인페이지 - 이번주 인기글
	public ArrayList<raidBoardModel> selectWeekHotBoardList();
	//메인페이지 - 전체글 목록
	public ArrayList<raidBoardModel> selectAllBoardList();
	
	//상세페이지 및 글작성 페이지
	//test
	public String selectTest();
}
