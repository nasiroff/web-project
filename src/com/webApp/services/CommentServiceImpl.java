package com.webApp.services;

import com.webApp.dao.CommentDao;
import com.webApp.model.Comment;
import com.webApp.model.User;

import java.util.List;

public class CommentServiceImpl implements CommentService{

    private CommentDao commentDao;

    public CommentServiceImpl(CommentDao commentDao) {
        this.commentDao = commentDao;
    }

    @Override
    public boolean insertNewComment(String message, User user, int idBlog) {
        return commentDao.insertNewComment(message, user, idBlog);
    }

    @Override
    public List<Comment> getAllCommentByBlogId(int idBlog) {
        return commentDao.getAllCommentByBlogId(idBlog);
    }
}
