package com.first_internet.first_internet;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FirstInternetController {

    @GetMapping("/")
    public String home() {
        return "LO";
    }
}
