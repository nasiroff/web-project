package com.webApp.servlet;

import com.webApp.dao.BlogDaoImpl;
import com.webApp.dao.CommentDaoImpl;
import com.webApp.model.Blog;
import com.webApp.model.Comment;
import com.webApp.model.User;
import com.webApp.services.BlogService;
import com.webApp.services.BlogServiceImpl;
import com.webApp.services.CommentService;
import com.webApp.services.CommentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TopicServlet", urlPatterns = "/ts")
public class TopicServlet extends HttpServlet {
    private BlogService blogService = new BlogServiceImpl(new BlogDaoImpl());
    private CommentService commentService = new CommentServiceImpl(new CommentDaoImpl());
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
                blogService.updateViewCount(blogId);
                Blog blog = blogService.getBlogById(blogId);
                List<Comment> comments = commentService.getAllCommentByBlogId(blogId);
                String[] pages = {"header.jsp", "topic.jsp", "footer.jsp"};
                request.setAttribute("blog", blog);
                request.setAttribute("comments", comments);
                request.setAttribute("pages", pages);
                request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
            }else if (action.equals("olderTopics")){
                List<Blog> blogList = blogService.getAllBlogsAndCommentsCountWithLimit(null, request.getParameter("page"));
                String[] pages = {"header.jsp", "main.jsp", "footer.jsp"};
                int blogCount = blogService.getBlogCount();
                int count = (int) Math.ceil(blogCount/10);
                request.setAttribute("count", count);
                request.setAttribute("blogList", blogList);
                request.setAttribute("pages", pages);
                request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
            }else if ("newComment".equals(action)){
                int idBlog = Integer.parseInt(request.getParameter("idBlog"));
                User user = (User) request.getSession().getAttribute("user");
                String message = request.getParameter("reply");
                System.out.println(user);
                if (commentService.insertNewComment(message, user, idBlog)){
                    response.sendRedirect("/ts?action=getTopic&topic="+idBlog);
                }else {
                    response.sendRedirect("/");
                }
            }else if ("getPopularTopic".equals(action)){
                List<Blog> blogList = blogService.getPopularBlog();
                request.setAttribute("blogList", blogList);
                request.getRequestDispatcher("/WEB-INF/fragments/popular-topic.jsp").forward(request, response);
            } else if ("smilarTopic".equals(action)){
                String title = request.getParameter("title");
                List<Blog> blogList = blogService.getSmilarBlog(title);
                request.setAttribute("blogList", blogList);
                request.getRequestDispatcher("/WEB-INF/fragments/smilar-topic.jsp").forward(request, response);
            }
//        }
    }
}
