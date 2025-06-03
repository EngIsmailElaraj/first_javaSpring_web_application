package com.in28muints.myfirstwebapp0.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController  {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("contentPage", "/WEB-INF/jsp/pages/home.jsp");
        return "/WEB-INF/jsp/includes/layout.jsp";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("contentPage", "/WEB-INF/jsp/pages/about.jsp");
        return "/WEB-INF/jsp/includes/layout.jsp";
    }
}