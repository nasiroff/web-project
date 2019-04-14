package com.webApp.util;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {
//    public static Connection getConnection(){
//        Connection con = null;
//        try {
//            Context context = new InitialContext();
//            DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/web-app");
//            con = dataSource.getConnection();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return con;
//    }
    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/web_application";
            String username = "root";
            String password = "321654987";
            connection = DriverManager.getConnection(url, username, password);
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }
    public static void closeAll(AutoCloseable... autoCloseables){
        for (AutoCloseable autoCloseable:autoCloseables) {
            if (autoCloseable != null) {
                try {
                    autoCloseable.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
