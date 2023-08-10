package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;


@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
@MapperScan(basePackages = {"com.example.demo.mapper"})
public class ProjectTeamApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectTeamApplication.class, args);
	}

}
