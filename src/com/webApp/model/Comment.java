package com.webApp.model;

import java.time.LocalDate;

public class Comment {
    private int id;
    private String message;
    private LocalDate addingDate;
    private User user;
    private Blog blog;

    public Comment() {
    }

    public Comment(int id, String message, LocalDate addingDate, User user, Blog blog) {
        this.id = id;
        this.message = message;
        this.addingDate = addingDate;
        this.user = user;
        this.blog = blog;
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

    public LocalDate getAddingDate() {
        return addingDate;
    }

    public void setAddingDate(LocalDate addingDate) {
        this.addingDate = addingDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", message='" + message + '\'' +
                ", addingDate=" + addingDate +
                ", user=" + user +
                ", blog=" + blog +
                '}';
    }
}
