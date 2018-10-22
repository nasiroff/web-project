package com.webApp.services;

import com.webApp.model.Blog;

import java.util.List;

public interface BlogService {
    List<Blog> getAllBlogsAndUser();
    Blog getBlogById(int idBlog);
}
