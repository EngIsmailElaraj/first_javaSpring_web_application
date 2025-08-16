/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.Todo;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import jakarta.validation.Valid;
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
        todos.add(new Todo(++todosCount,"ismail","learn AWS", LocalDateTime.now().plusHours(1),false));
        todos.add(new Todo(++todosCount,"ismail","learn AWS", LocalDateTime.now(),false));
        todos.add(new Todo(++todosCount,"ismail","learn AWS", LocalDateTime.now(),false));

    }

    
    public List<Todo> findByUsername(String username){
        Predicate<? super Todo> pridicate = todo -> todo.getUsername().equalsIgnoreCase(username);
    return  todos.stream().filter(pridicate).toList();
    }
    public void addTodo(String username, String description, LocalDateTime targetDate,boolean done ){
        Todo todo = new Todo(++todosCount,username,description,targetDate,done);
        todos.add(todo);

    }
    public void deleteById(int id){
            Predicate<? super Todo> pridicate = todo -> todo.getId()==id;
            todos.removeIf(pridicate);
        }


    public Todo findByid(int id) {
        Predicate<?super Todo> predicate = todo -> todo.getId()==id;
      Todo todo =  todos.stream().filter(predicate).findFirst().get();
      return todo;
    }

    public void updateTodo(@Valid Todo todo) {
        deleteById(todo.getId());
        todos.add(todo);
    }
}

