package de.springbootbuch.cloud_foundry;

import java.util.List;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class Application {

    @RestController
    public static class HelloWorldController {
        
        private final GreetingRepository greetingRepository;

        public HelloWorldController(GreetingRepository greetingRepository) {
            this.greetingRepository = greetingRepository;
        }

        @GetMapping("/hello")
        public List<GreetingEntity> helloWorld() {
            return this.greetingRepository.findAll(new Sort(new Order(Direction.ASC, "value")));
        }
    }

    public static void main(String... args) {
        SpringApplication.run(Application.class, args);
    }
}