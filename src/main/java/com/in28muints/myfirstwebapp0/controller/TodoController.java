/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import com.in28muints.myfirstwebapp0.Todo.Todo;
import com.in28muints.myfirstwebapp0.Todo.TodoService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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

  // post and get Adding
       @RequestMapping(value ="add-todo" ,method = RequestMethod.GET)
    public String showNewtodoPage(ModelMap model){
           String username = (String) model.get("name");
           Todo todo = new Todo(0,username,"way binding validation", LocalDateTime.now(),false);
            model.put("todo",todo); // so the "todo" is the same in the modalAttrebut in todoDeatils.jsp .
           return "todoDetails";

       }

               @RequestMapping(value = "add-todo", method = RequestMethod.POST)
            public String addNewTodo(ModelMap model, @Valid Todo todo, BindingResult result){
        if (result.hasErrors()){
            return "todoDetails";
        }


                   String username = (String) model.get("name");
           todoService.addTodo(username,todo.getDescription(), LocalDateTime.now(),false);
           return "redirect:say-todo-jsp";
       }

       //delete todo
       @RequestMapping("delete_todo")
       public String deleteTodo(@RequestParam int id){
          //Delete todo
           todoService.deleteById(id);
           return "redirect:say-todo-jsp";
       }



    // post and get update
    @RequestMapping(value ="update-todo" ,method = RequestMethod.GET)
    public String ShowUpdateTodo(@RequestParam int id,ModelMap model){
        Todo todo =  todoService.findByid(id);
        model.addAttribute("todo",todo);

        return "todoDetails";

    }

    @RequestMapping(value = "update-todo", method = RequestMethod.POST)
        public String addUpdateNewTodo(ModelMap model, @Valid Todo todo, BindingResult result){
        if (result.hasErrors()){
            return "todoDetails";
        }

        String username = (String) model.get("name");
        todo.setTargetDate(LocalDateTime.now());
        todo.setUsername(username);
        todoService.updateTodo(todo);
        return "redirect:say-todo-jsp";
    }
}
