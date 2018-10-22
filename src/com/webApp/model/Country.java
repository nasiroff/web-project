package com.webApp.model;

public class Country {
    private int id;
    private String name;
    private String niceName;

    public Country(int id, String name, String niceName) {

        this.id = id;
        this.name = name;
        this.niceName = niceName;
    }

    public Country() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNiceName() {
        return niceName;
    }

    public void setNiceName(String niceName) {
        this.niceName = niceName;
    }

    @Override
    public String toString() {
        return "Country{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", niceName='" + niceName + '\'' +
                '}';
    }
}
