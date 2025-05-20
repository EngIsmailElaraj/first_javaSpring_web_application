/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.Todo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author LEGION
 */
@Controller
@SessionAttributes("name")
public class TodoController {
    @Autowired
    TodoService todoService ;
       @RequestMapping("say-todo-jsp")
public String ListAllTodos(ModelMap model){
    List<Todo> todos = todoService.findByUsername("in28");
    model.addAttribute("todos",todos);
    return "todo";  // يجب أن يتطابق مع اسم ملف hello.jsp
}
}
