package com.zale.service;

import com.zale.entity.Permis;
import com.zale.entity.User;

import java.util.List;


public interface UserService {

    void register(User user);


    User findByUserName(String username);


    User findRolesByUserName(String username);

    List<Permis> findPermsByRoleId(String id);

}
