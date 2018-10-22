package com.webApp.services;

import com.webApp.dao.BlogDao;
import com.webApp.model.Blog;

import java.util.List;

public class BlogServiceImpl implements BlogService {

    private BlogDao blogDao;

    public BlogServiceImpl(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    @Override
    public List<Blog> getAllBlogsAndUser() {
        return blogDao.getAllBlogsAndUser();
    }

    @Override
    public Blog getBlogById(int idBlog) {
        return blogDao.getBlogById(idBlog);
    }
}
