package com.webApp.services;

import com.webApp.model.Action;
import com.webApp.model.Role;
import com.webApp.model.User;

import java.util.List;

public interface UserService {
    List<Role> getAllRoles();
    boolean registerNewUser(User user);
    boolean activateUserByToken(String token, String newToken);
    User loginUser(String username, String password);
    boolean isActionAllowed(int idRole, String action);
    List<Action> getActionsByRoleId(int roleId);

}
