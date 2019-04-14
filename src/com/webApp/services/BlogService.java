package com.webApp.services;

import com.webApp.model.Blog;

import java.util.List;

public interface BlogService {
    List<Blog> getAllBlogsAndUser();
    Blog getBlogById(int idBlog);
    List<Blog> getAllBlogsAndCommentsCountWithLimit(String limit, String offset);
    void updateViewCount(int idPost);
    int getBlogCount();
    List<Blog> getPopularBlog();
    List<Blog> getSmilarBlog(String title);
}
