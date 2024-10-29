package com.milan.lnt;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LntController {
    @GetMapping("/")
    public String index() {
        return "index";
    }
}
