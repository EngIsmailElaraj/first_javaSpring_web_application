package com.in28muints.myfirstwebapp0.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class homeController {
    @RequestMapping("/home")
    public String home(){
        return "hello";
    }

}
