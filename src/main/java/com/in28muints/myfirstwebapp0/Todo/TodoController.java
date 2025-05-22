/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.Todo;

import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    return "list-todo";  // يجب أن يتطابق مع اسم ملف hello.jsp
}

  // post and get
       @RequestMapping(value ="add-todo" ,method = RequestMethod.GET)
    public String showNewtodoPage(ModelMap model){
           String username = (String) model.get("name");
           Todo todo = new Todo(0,username,"",LocalDate.now().plusYears(1),false);
            model.put("todo",todo); // so the "todo" is the same in the modalAttrebut in todoDeatils.jsp
           return "todoDetails";

       }

       @RequestMapping(value = "add-todo", method = RequestMethod.POST)
    public String addNewTodo(ModelMap model ,Todo todo){

           String username = (String) model.get("name");
           todoService.addTodo(username,todo.getDescription(), LocalDate.now().plusYears(1),false);
           return "redirect:say-todo-jsp";
       }
}
