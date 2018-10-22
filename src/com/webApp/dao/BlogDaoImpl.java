package com.webApp.dao;

import com.webApp.model.Blog;
import com.webApp.model.User;
import com.webApp.util.CalculateShareTimeToNow;
import com.webApp.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BlogDaoImpl implements BlogDao {
    private final String GET_ALL_BLOGS_AND_USER = "select * from post p inner join user u using (id_user) ";
    private final String GET_BLOG_BY_ID = "select * from post p inner join user u using (id_user) where id_post = ?";
    @Override
    public List<Blog> getAllBlogsAndUser() {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Blog> list = new ArrayList<>();
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(GET_ALL_BLOGS_AND_USER);
            rs = ps.executeQuery();
            while(rs.next()){
                Blog blog = new Blog();
                blog.setTitle(rs.getString("title"));
                blog.setId(rs.getInt("id_post"));
                blog.setDescription(rs.getString("description"));
                blog.setShareDate(rs.getTimestamp("share_date").toLocalDateTime());
                blog.setTimeDiff(CalculateShareTimeToNow.timeDiff(rs.getTimestamp("share_date").toLocalDateTime()));
                User user = new User();
                user.setEmail(rs.getString("email"));
                user.setUsername(rs.getString("username"));
                user.setId(rs.getInt("id_user"));
                blog.setUser(user);
                list.add(blog);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Blog> getAllBlogsByUser(int idUser) {
        return null;
    }


    @Override
    public boolean createNewBlog(Blog blog) {
        return false;
    }

    @Override
    public Blog getBlogById(int idBlog) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Blog blog = new Blog();
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(GET_BLOG_BY_ID);
            ps.setInt(1, idBlog);
            rs = ps.executeQuery();
            if (rs.next()){
                blog.setId(rs.getInt("id_post"));
                blog.setTitle(rs.getString("title"));
                blog.setDescription(rs.getString("description"));
                blog.setShareDate(rs.getTimestamp("share_date").toLocalDateTime());
                blog.setTimeDiff(CalculateShareTimeToNow.timeDiff(rs.getTimestamp("share_date").toLocalDateTime()));
                User user = new User();
                user.setId(rs.getInt("id_user"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                blog.setUser(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.closeAll(con, ps, rs);
        }
        return blog;
    }
}
