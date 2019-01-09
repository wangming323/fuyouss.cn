package com.team323.sys.service;


import com.team323.sys.entity.User;

import java.util.List;

public interface User_service {

    List<User> findByNameAndPassword(User uesr);
    List<User> find_user(User user);
    void addUser(User user);

}

