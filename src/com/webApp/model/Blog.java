package com.webApp.model;

import java.time.LocalDateTime;

public class Blog {
    private int id;
    private String title;
    private String description;
    private LocalDateTime shareDate;
    private User user;
    private String timeDiff;


    public Blog() {
    }

    public Blog(int id, String title, String description, LocalDateTime shareDate, User user, String timeDiff) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.shareDate = shareDate;
        this.user = user;
        this.timeDiff = timeDiff;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getShareDate() {
        return shareDate;
    }

    public void setShareDate(LocalDateTime shareDate) {
        this.shareDate = shareDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTimeDiff() {
        return timeDiff;
    }

    public void setTimeDiff(String timeDiff) {
        this.timeDiff = timeDiff;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", shareDate=" + shareDate +
                ", user=" + user +
                ", timeDiff=" + timeDiff +
                '}';
    }
}
