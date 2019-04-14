package com.webApp.dao;

import com.webApp.model.Comment;
import com.webApp.model.User;

import java.util.List;

public interface CommentDao {
    List<Comment> getAllComment();
    boolean insertNewComment(String message, User user, int idBlog);
    List<Comment> getAllCommentByBlogId(int idBlog);
}
