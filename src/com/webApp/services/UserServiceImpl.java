package com.webApp.services;

import com.webApp.dao.UserDao;
import com.webApp.model.Action;
import com.webApp.model.Role;
import com.webApp.model.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }


    @Override
    public List<Role> getAllRoles() {
        return null;
    }

    @Override
    public boolean registerNewUser(User user) {
        return userDao.registerNewUser(user);
    }

    @Override
    public boolean activateUserByToken(String token, String newToken) {
        return false;
    }

    @Override
    public User loginUser(String username, String password) {
        return userDao.loginUser(username, password);
    }

    @Override
    public boolean isActionAllowed(int idRole, String action) {
        return false;
    }

    @Override
    public List<Action> getActionsByRoleId(int roleId) {
        return userDao.getActionsByRoleId(roleId);
    }
}
