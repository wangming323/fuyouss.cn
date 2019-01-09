package com.team323.sys.dao;

import com.team323.sys.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapping {

    List<User> findByNameAndPassword(User user);
    List<User> find_user(User user);
    void addUser(User user);

}
