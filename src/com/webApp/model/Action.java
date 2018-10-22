package com.webApp.model;

public class Action {
    private String actionType;


    public Action(int id, String actionType) {
        this.actionType = actionType;
    }


    public String getActionType() {
        return actionType;
    }

    public void setActionType(String avtionType) {
        this.actionType = avtionType;
    }

    public Action() {
    }

    @Override
    public String toString() {
        return "Action{" +
                ", avtionType='" + actionType + '\'' +
                '}';
    }
}
