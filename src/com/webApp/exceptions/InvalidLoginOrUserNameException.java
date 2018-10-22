package com.webApp.exceptions;

public class InvalidLoginOrUserNameException extends Exception {
    public InvalidLoginOrUserNameException(String message) {
        super(message);
    }
}
