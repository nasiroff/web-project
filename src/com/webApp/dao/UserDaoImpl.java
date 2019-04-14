package com.webApp.dao;

import com.webApp.constants.UserConstants;
import com.webApp.model.Action;
import com.webApp.model.Role;
import com.webApp.model.User;
import com.webApp.util.DbUtil;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao  {

    private final String INSERT_NEW_USER_DATA="insert into user( username, email, token, password, id_role, status, image ) values (?, ?, ?, ?, ?, ?, ?)";
    private final String GET_ALL_ACTION_TYPE_BY_ROLE_ID = "select a.action_type from role_action ra inner join action a on ra.id_action = a.id_action where id_role = ?";
    private final String GET_USER_BY_EMAIL_AND_PASSWORD = "select * from user u inner join role r on u.id_role = r.id_role where username = ? and password = ?";
    @Override
    public List<Role> getAllRoles() {
        return null;
    }

    @Override
    public boolean registerNewUser(User user) {
        Connection con =  null;
        PreparedStatement ps = null;
        boolean result = false;
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(INSERT_NEW_USER_DATA);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getToken());
            ps.setString(4, user.getPassword());
            ps.setInt(5, UserConstants.USER_ROLE_UNAUTH);
            ps.setInt(6, UserConstants.USER_STATUS_INACTIVE);
            ps.setString(7, user.getImage());
            ps.execute();
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.closeAll(con, ps);
        }
        return result;
    }

    @Override
    public boolean activateUserByToken(String token, String newToken) {
        return false;
    }

    @Override
    public User loginUser(String username, String password) {
        Connection con =  null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User user = null;
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(GET_USER_BY_EMAIL_AND_PASSWORD);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()){
                user = new User();
                user.setId(rs.getInt("id_user"));
                user.setEmail(username);
                user.setPassword(password);
                Role role = new Role();
                role.setId(rs.getInt("id_role"));
                role.setRoleType(rs.getString("role_type"));
                user.setRole(role);
                user.setToken(rs.getString("token"));
                user.setStatus(rs.getInt("status"));
                user.setImage(rs.getString("image"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.closeAll(con, ps, rs);
        }
        return user;
    }

    @Override
    public boolean isActionAllowed(int idRole, String action) {
        return false;
    }

    @Override
    public List<Action> getActionsByRoleId(int idRole) {
        Connection con =  null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Action> list = new ArrayList<>();
        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(GET_ALL_ACTION_TYPE_BY_ROLE_ID);
            ps.setInt(1, idRole);
            rs = ps.executeQuery();
            while (rs.next()){
                Action action = new Action();
                action.setActionType(rs.getString("action_type"));
                list.add(action);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtil.closeAll(con, ps, rs);
        }
        return list;
    }


}
