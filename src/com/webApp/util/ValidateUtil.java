package com.webApp.util;

public class ValidateUtil {
    private ValidateUtil() {
    }

    public static boolean validate(String... args){
        for (String arg: args) {
            if ((arg == null) || (arg.trim().isEmpty())){
                return false;
            }
        }
        return true;
    }
}
