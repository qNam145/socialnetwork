package com.project.socialnetwork;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
@SpringBootApplication
public class SocialnetworkApplication {
	public static void main(String[] args) {
		SpringApplication.run(SocialnetworkApplication.class, args);
	}
}
