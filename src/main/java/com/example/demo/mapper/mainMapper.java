package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.raidBoardModel;

@Mapper
public interface mainMapper {
	public ArrayList<raidBoardModel> getRaidBoardList(raidBoardModel model);
	public ArrayList<raidBoardModel> getRaidHotBoardList(raidBoardModel model);
}
