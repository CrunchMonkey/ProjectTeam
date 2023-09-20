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
	public ArrayList<raidBoardModel> getRaidBoardList() {
		// TODO Auto-generated method stub
		return mainMapper.getRaidBoardList();
	}
	
	@Override
	public ArrayList<raidBoardModel> getRaidHotBoardList() {
		// TODO Auto-generated method stub
		return mainMapper.getRaidHotBoardList();
	}

	@Override
	public String selectTest() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
