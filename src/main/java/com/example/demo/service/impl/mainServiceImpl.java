package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.mainMapper;
import com.example.demo.service.mainService;

@Service(value = "mainService")
public class mainServiceImpl implements mainService{
	
	@Autowired
	mainMapper mainMapper;
	
	@Override
	public String selectTest() {
		System.out.println(mainMapper.selectTest());
		return null;
	}

}
