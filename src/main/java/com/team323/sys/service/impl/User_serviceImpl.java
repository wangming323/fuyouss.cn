package com.team323.sys.service.impl;

import com.team323.sys.dao.UserMapping;
import com.team323.sys.entity.User;
import com.team323.sys.service.User_service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class User_serviceImpl implements User_service {
    @Autowired
    UserMapping userMapping;


    @Override
    public List<User> findByNameAndPassword(User user) {
        List<User> records = userMapping.findByNameAndPassword(user);
        System.out.println(records);
        return records;

    }

    @Override
    public List<User> find_user(User user) {
        return userMapping.find_user(user);
    }



    @Override
    public void addUser(User user) {
        userMapping.addUser(user);
    }
}
