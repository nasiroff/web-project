package com.webApp.servlet;

import com.webApp.constants.NavigationConstants;
import com.webApp.dao.UserDaoImpl;
import com.webApp.model.User;
import com.webApp.services.UserService;
import com.webApp.services.UserServiceImpl;
import com.webApp.util.SendMailUtil;
import com.webApp.util.ValidateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.UUID;

@WebServlet(name = "UserServlet", urlPatterns = "/us")
@MultipartConfig
public class UserServlet extends HttpServlet {
    private UserService userService= new UserServiceImpl(new UserDaoImpl());
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = request.getParameter("action");
        if (action.equals(NavigationConstants.ACTION_DO_REGISTER)){
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String username = request.getParameter("userName");
            String password = request.getParameter("pass");
            String rePassword = request.getParameter("rePass");
            Part part = request.getPart("image");
            String filePath = getServletContext().getRealPath("/");
            if (ValidateUtil.validate(firstName, lastName, email, username, password, rePassword)){
                if (rePassword.equals(password)){
                    User user = new User();
                    user.setUsername(username);
                    user.setEmail(email);
                    user.setPassword(password);
                    String token = java.util.UUID.randomUUID().toString();
                    user.setToken(token);
                    user.setImage(java.util.UUID.randomUUID().toString()+"_"+java.util.UUID.randomUUID().toString()+getFileName(part));
                    if (userService.registerNewUser(user)){
        //                SendMailUtil.sendMail(email, "Welcome", "Click link to to activate user."+ "http://localhost:8080/us?action=activate&token=" + token);
                        OutputStream out = null;
                        InputStream fileContent = null;
                        try{
                            out = new FileOutputStream(filePath+ File.separator+"resources/images/"+user.getImage());
                            fileContent = part.getInputStream();
                            byte[] bytes = new byte[1024];
                            int reader = 0;
                            while ((reader = fileContent.read(bytes)) != -1){
                                out.write(bytes, 0 , reader);
                            }
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                        response.sendRedirect("/ns?action=login");
                    }else {
                        response.sendRedirect("/ns?action=register");
                    }
                }
            }
        }else if(action.equals(NavigationConstants.ACTION_LOGIN_USER)){
            String username =  request.getParameter("username");
            String password  = request.getParameter("pass");
            User user = userService.loginUser(username, password);
            if (user != null){
                request.getSession().setAttribute("user", user);
                response.sendRedirect("/");
                System.out.println("salam");
            }
        }
    }

    private String getFileName(Part part) {
        String partHeader = part.getHeader("content-disposition");
        for (String content : partHeader.split(";")){
            if (content.trim().startsWith("filename")){
                return content.substring(content.indexOf("=")+1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
