package com.in28muints.myfirstwebapp0.Todo;

import jakarta.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Locale;

import org.ocpsoft.prettytime.PrettyTime;

public class Todo {
    private int id;
    private String username;

    @Size(min = 5, message = "Enter at least 5 characters")
    private String description;

    private boolean done;

    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") // هذا الفورمات يضبط مع datetime input
    private LocalDateTime targetDate;

    public Todo(int id, String username, String description, LocalDateTime targetDate, boolean done) {
        this.id = id;
        this.username = username;
        this.description = description;
        this.targetDate = targetDate;
        this.done = done;
    }


    public String getPrettyTargetDate() {
        if (targetDate == null) return "";

        PrettyTime prettyTime = new PrettyTime(Locale.GERMAN); // <-- اللغة الألمانية
        Date date = Date.from(targetDate.atZone(ZoneId.systemDefault()).toInstant());
        return prettyTime.format(date);
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

    public LocalDateTime getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(LocalDateTime targetDate) {
        this.targetDate = targetDate;
    }

    @Override
    public String toString() {
        return "Todo{" + "id=" + id + ", username=" + username + ", description=" + description +
                ", targetDate=" + targetDate + ", done=" + done + '}';
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
}
