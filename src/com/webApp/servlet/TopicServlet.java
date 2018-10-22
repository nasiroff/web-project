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

@WebServlet(name = "TopicServlet", urlPatterns = "/ts")
public class TopicServlet extends HttpServlet {
    private BlogService blogService = new BlogServiceImpl(new BlogDaoImpl());
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action  = request.getParameter("action");

//        if (request.getParameter("topic") == null) {
//            response.sendRedirect("/");
//        }else {
            if (action.equals("getTopic")){
                int blogId = Integer.parseInt(request.getParameter("topic"));
                Blog blog = blogService.getBlogById(blogId);
                String[] pages = {"header.jsp", "topic.jsp", "footer.jsp"};
                request.setAttribute("blog", blog);
                request.setAttribute("pages", pages);
                request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
            }
//        }
    }
}
