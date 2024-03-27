package com.jonima.local.eureka.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * Entry point para local eureka server
 * @author SRE
 */
@EnableEurekaServer
@SpringBootApplication
public class Servidor {
    public static void main(String[] args) {
        SpringApplication.run(Servidor.class, args);
    }
}
