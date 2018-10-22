package com.webApp.servlet;

import com.webApp.dao.BlogDaoImpl;
import com.webApp.model.Blog;
import com.webApp.services.BlogService;
import com.webApp.services.BlogServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "")
public class HomeServlet extends HttpServlet {
    private BlogService blogService = new BlogServiceImpl(new BlogDaoImpl());
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String[] pages = {"header.jsp", "main.jsp", "footer.jsp"};
        request.setAttribute("pages", pages);
        List<Blog> blogs = blogService.getAllBlogsAndUser();
        request.setAttribute("blogs", blogs);
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}
