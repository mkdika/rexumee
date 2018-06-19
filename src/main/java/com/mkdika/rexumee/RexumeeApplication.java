package com.mkdika.rexumee;

import com.mkdika.rexumee.model.Resume;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties({
    Resume.class
})
public class RexumeeApplication {

    public static void main(String[] args) {
        SpringApplication.run(RexumeeApplication.class, args);
    }
}
