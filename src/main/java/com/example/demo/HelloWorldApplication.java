package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.testcontainers.containers.PostgreSQLContainer;

@SpringBootApplication
public class HelloWorldApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelloWorldApplication.class, args);
    }

    @RestController
    public static class HelloWorldController {

        @GetMapping("/hello")
        public String hello() {
            return "Hello World!";
        }
    }

    // PostgreSQL Testcontainer
    public static PostgreSQLContainer postgreSQLContainer = new PostgreSQLContainer()
            .withDatabaseName("test_dec_2022")
            .withUsername("postgres")
            .withPassword("password");

    static {
        postgreSQLContainer.start();
    }
}

