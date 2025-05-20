/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.controller;

import com.in28muints.myfirstwebapp0.login.AuthenticactionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author LEGION
 */
//localhost/8080/say-login-jsp/?name=marwin

@Controller
@SessionAttributes("name")
public class loginController {
     @Autowired
    AuthenticactionService authenticactionService ;
   Logger log = LoggerFactory.getLogger(getClass());
    @RequestMapping(value ="say-login-jsp" ,method = RequestMethod.GET)
     public String JspgoToWelcomePage()
     {
     return  "login";
     }
     @RequestMapping(value ="say-login-jsp" ,method = RequestMethod.POST)
    public String JspgoToWelcomePage
        (@RequestParam String name,@RequestParam String password, ModelMap model) {
            if (authenticactionService.authenticate(name, password)) {
              model.put("name", name);
              model.put("password", password);
               return "welcome"; 
         }
           model.put("errorMessage", "mother fucker error");
        log.debug("Request param is {}", name);
        // System.out.println("request + "+name);
        return "login";  // يجب أن يتطابق مع اسم ملف hello.jsp
    }

}
