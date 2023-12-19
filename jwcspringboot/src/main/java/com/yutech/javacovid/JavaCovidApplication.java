package com.yutech.javacovid;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;

@SpringBootApplication
@MapperScan("com.yutech.javacovid.mapper")
@CrossOrigin
public class JavaCovidApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaCovidApplication.class, args);
	}

}
