package com.ez.wonder;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
public class WonderApplication {

	public static void main(String[] args) {
		SpringApplication.run(WonderApplication.class, args);
	}

}
