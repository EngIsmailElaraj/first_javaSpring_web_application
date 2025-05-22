/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.Todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author LEGION
 */
@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount = 0;

    static{
        todos.add(new Todo(++todosCount,"in28","learn AWS",LocalDate.now().plusYears(1),false));
        todos.add(new Todo(++todosCount,"in28","learn AWS",LocalDate.now().plusYears(2),false));
        todos.add(new Todo(++todosCount,"in28","learn AWS",LocalDate.now().plusYears(3),false));

    }

    
    public List<Todo> findByUsername(String username){
    return  todos;
    }
    public void addTodo(String username, String description,LocalDate targetDate,boolean done ){
        Todo todo = new Todo(++todosCount,username,description,targetDate,done);
        todos.add(todo);

    }
}
