package com.webApp.servlet;

import com.webApp.constants.NavigationConstants;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NavigationServlet", urlPatterns = "/ns")
public class NavigationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals(NavigationConstants.ACTION_LOGIN)){
            String[] array = {"login.jsp"};
            request.setAttribute("pages", array);
            request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
        }else if (action.equals(NavigationConstants.ACTION_REGISTER)){
            String[] array = {"header.jsp", "new_account.jsp", "footer.jsp"};
            request.setAttribute("pages", array);
            request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
        }else if(action.equals("createNewTopic")){
            String[] array = {"header.jsp", "new_topic.jsp", "footer.jsp"};
            request.setAttribute("pages", array);
            request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
        }else if(action.equals("doInsertTopic")){

        }
    }
}
