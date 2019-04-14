package com.webApp.dao;

import com.webApp.model.Comment;
import com.webApp.model.User;
import com.webApp.util.DbUtil;

import java.awt.image.DataBuffer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CommentDaoImpl implements CommentDao {
    private final String INSERT_INTO_COMMENT = "insert into comment(message, id_user, id_post) values (?, ?, ?)";
    private final String  GET_ALL_COMMENT_BY_ID_BLOG = "select * from comment c inner join user using (id_user) where id_post = ?";
    @Override
    public List<Comment> getAllComment() {
        return null;
    }

    @Override
    public boolean insertNewComment(String message, User user, int idBlog) {
        Connection con = null;
        PreparedStatement ps =null;
        boolean result = false;
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(INSERT_INTO_COMMENT);
            ps.setString(1, message);
            ps.setInt(2, user.getId());
            ps.setInt(3, idBlog);
            result = !ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.closeAll(con, ps);
        }
        return result;
    }

    @Override
    public List<Comment> getAllCommentByBlogId(int idBlog) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Comment> comments = new ArrayList<>();
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(GET_ALL_COMMENT_BY_ID_BLOG);
            ps.setInt(1, idBlog);
            rs = ps.executeQuery();
            while (rs.next()){
                Comment comment = new Comment();
                comment.setId(rs.getInt("id_comment"));
                comment.setMessage(rs.getString("message"));
                comment.setAddingDate(rs.getTimestamp("adding_time").toLocalDateTime());
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setId(rs.getInt("id_user"));
                user.setEmail(rs.getString("email"));
                comment.setUser(user);
                comments.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DbUtil.closeAll(con, ps, rs);
        }
        return comments;
    }
}
