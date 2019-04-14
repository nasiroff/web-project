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

    @Override
    public List<Blog> getAllBlogsAndCommentsCountWithLimit(String limit, String offset) {
        int newOffset = (offset==null || Integer.parseInt(offset) <= 1) ? 0 : Integer.parseInt(offset) * 10;
        int newLimit = (limit == null || Integer.parseInt(limit)< 10) ? 10 : Integer.parseInt(limit);
        return blogDao.getAllBlogsAndCommentsCountWithLimit(newLimit, newOffset);
    }

    @Override
    public void updateViewCount(int idPost) {
        blogDao.updateViewCount(idPost);
    }

    @Override
    public int getBlogCount() {
        return blogDao.getBlogCount();
    }

    @Override
    public List<Blog> getPopularBlog() {
        return blogDao.getPopularBlog();
    }

    @Override
    public List<Blog> getSmilarBlog(String title) {
        return blogDao.getSmilarBlog(title);
    }
}
