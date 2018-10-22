package com.webApp.model;

public class User {
    private int id;
    private String username;
    private String email;
    private String token;
    private Information information;
    private Role role;
    private String password;
    private int status;


    public User(int id, String username, String email, String token, Information information, Role role, String password, int status) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.token = token;
        this.information = information;
        this.role = role;
        this.password = password;
        this.status = status;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Information getInformation() {
        return information;
    }

    public void setInformation(Information information) {
        this.information = information;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", token='" + token + '\'' +
                ", information=" + information +
                ", role=" + role +
                ", password=" + password +
                '}';
    }
}
