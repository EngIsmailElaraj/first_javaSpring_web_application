/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author LEGION
 */
@Controller
public class helloController {
 
    
    @RequestMapping("say-hello-jsp")
public String Jspsayhello(){
    return "hello";  // يجب أن يتطابق مع اسم ملف hello.jsp
}



}
