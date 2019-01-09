package com.team323.sys.controller;


import com.team323.sys.service.User_service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/view/")
public class Upload {
    @Autowired
    private User_service user_service;



}
