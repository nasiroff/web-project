package com.webApp.services;

import com.webApp.model.Comment;
import com.webApp.model.User;

import java.util.List;

public interface CommentService {
    boolean insertNewComment(String message, User user, int idBlog);
    List<Comment> getAllCommentByBlogId(int idBlog);
}
