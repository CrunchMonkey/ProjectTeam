package com.example.demo.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.mainMapper;
import com.example.demo.model.raidBoardModel;
import com.example.demo.service.mainService;

@Service(value = "mainService")
public class mainServiceImpl implements mainService{
	
	@Autowired
	mainMapper mainMapper;

	@Override
	public ArrayList<raidBoardModel> selectWeekHotBoardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<raidBoardModel> selectAllBoardList() {
		// TODO Auto-generated method stub
		return mainMapper.selectAllBoardList();
	}

	@Override
	public String selectTest() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
