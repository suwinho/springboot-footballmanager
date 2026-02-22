package com.footballmanager.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class FootballManagerApplication {
	private static ConfigurableApplicationContext springContext;

	public static void main(String[] args) {
		springContext = SpringApplication.run(FootballManagerApplication.class, args);

		DesktopWindow.launchWindow();
	}

	public static void shutdown() {
		if (springContext != null) {
			springContext.close();
		}
		System.exit(0);
	}

}
