/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.Todo;

import java.time.LocalDate;

/**
 *
 * @author LEGION
 */
public class Todo {
    private int id;
    private String username;
    private String description;
    private LocalDate targetDate;
    private boolean done;

    public Todo(int id, String username, String description, LocalDate targetDate, boolean done) {
        this.id = id;
        this.username = username;
        this.description = description;
        this.targetDate = targetDate;
        this.done = done;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public LocalDate getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(LocalDate targetDate) {
        this.targetDate = targetDate;
    }

    @Override
    public String toString() {
        return "Todo{" + "id=" + id + ", username=" + username + ", description=" + description + ", targetDate=" + targetDate + ", done=" + done + '}';
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
    
}
