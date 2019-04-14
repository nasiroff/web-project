package com.webApp.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Comment {
    private int id;
    private String message;
    private LocalDateTime addingDate;
    private User user;

    public Comment() {
    }

    public Comment(int id, String message, LocalDateTime addingDate, User user) {
        this.id = id;
        this.message = message;
        this.addingDate = addingDate;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public LocalDateTime getAddingDate() {
        return addingDate;
    }

    public void setAddingDate(LocalDateTime addingDate) {
        this.addingDate = addingDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", message='" + message + '\'' +
                ", addingDate=" + addingDate +
                ", user=" + user +
                '}';
    }
}
