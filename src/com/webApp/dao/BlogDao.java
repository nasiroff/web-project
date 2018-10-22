package com.webApp.dao;

import com.webApp.model.Blog;
import com.webApp.model.User;

import java.util.List;

public interface BlogDao {
    List<Blog> getAllBlogsAndUser();
    List<Blog> getAllBlogsByUser(int idUser);
    boolean createNewBlog(Blog blog);
    Blog getBlogById(int idBlog);

}
