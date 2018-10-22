package com.webApp.filter;

import com.webApp.constants.UserConstants;
import com.webApp.dao.UserDaoImpl;
import com.webApp.model.Action;
import com.webApp.model.User;
import com.webApp.services.UserService;
import com.webApp.services.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//@WebFilter(filterName = "SecurityFilter", urlPatterns = "/*")
public class SecurityFilter  {
    private UserService userService = new UserServiceImpl(new UserDaoImpl());

    private List<Action> adminActions;
    private List<Action> managerActions;
    private List<Action> nonAuthActions;


    public void destroy() {

    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        if (request.getRequestURI().contains("resources")) {
            chain.doFilter(req, resp);
            return;
        }

        String action = request.getParameter("action");
        User user = (User) request.getSession().getAttribute("user");
        boolean isAllowed = false;


        if (request.getRequestURI().equals(request.getContextPath() + "/")) {
            isAllowed = true;
        }else if (action != null) {

            List<Action> list = new ArrayList<>();

            if (user == null) {
                list = nonAuthActions;
            } else if (user.getRole().getId() == UserConstants.USER_ROLE_ADMIN) {
                list = adminActions;
            } else if (user.getRole().getId() == UserConstants.USER_ROLE_MANAGER) {
                list = managerActions;
            }

            isAllowed = list.stream().anyMatch(a -> a.getActionType().equalsIgnoreCase(action));

        }

        if (isAllowed) {
            chain.doFilter(req, resp);
        } else {

            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.setHeader("Location", "/ns?action=login");


            if (!"XMLHttpRequest".equalsIgnoreCase(request.getHeader("x-requested-with"))) {
                response.sendRedirect("");
            }


        }

    }

    public void init(FilterConfig config) throws ServletException {
        adminActions = userService.getActionsByRoleId(UserConstants.USER_ROLE_ADMIN);
        managerActions = userService.getActionsByRoleId(UserConstants.USER_ROLE_MANAGER);
        nonAuthActions = userService.getActionsByRoleId(UserConstants.USER_ROLE_UNAUTH);
    }

}
