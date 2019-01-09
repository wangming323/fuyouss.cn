package com.team323.sys.controller;


import com.team323.sys.entity.User;
import com.team323.sys.service.User_service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/view/")
@SessionAttributes({"name", "intro", "state"})
public class ViewControl {
    @Autowired
    private User_service userService;

    @RequestMapping("go_index")
    public String go_index(String state, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("USER_SESSION");
        if (user == null) {
            System.out.println("null");
            state = "偷得浮生半日闲...";
            model.addAttribute("state", state);
        }
        return "index";
    }

    @RequestMapping("go_register")
    public String go_register() {
        return "register";
    }

    @RequestMapping("go_login")
    public String go_login() {
        return "login";
    }

    @RequestMapping("go_user")
    public String go_user() {
        return "user";
    }

    @RequestMapping("go_find")
    public String go_find() {
        return "find";
    }


    @RequestMapping("login")
    public String login(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session, String state) throws Exception {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //将表中获取的值封装到user中
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));




      /* System.out.println(username);
        System.out.println(password);*/

        //查找用户
        List<User> records = userService.findByNameAndPassword(user);
        if (records.size() > 0) {
            System.out.println("登录成功");
            //将用户对象添加到Session中
            session.setAttribute("USER_SESSION", user);
            User user1 = (User) session.getAttribute("USER_SESSION");
            List<User> user_info = userService.find_user(user);
            for (int i = 0; i < user_info.size(); i++) {
                System.out.println(user_info.get(i));
                user1 = user_info.get(i);
            }

            String name = user1.getName();
            String intro = user1.getIntro();
            state = ",睡觉睡醒了";

            model.addAttribute("name", name);
            model.addAttribute("intro", intro);
            model.addAttribute("sta", "登录成功!!!即将跳转到主页~");
            model.addAttribute("go_index", "go");
            model.addAttribute("state", state);
            //           request.setAttribute("yanzhen","go");
            return "login";
        } else {
            System.out.println("登录失败");
            model.addAttribute("sta", "登录失败,检查用户名密码");
            //     request.setAttribute("yanzhen","no");
            return "login";
        }

    }

    @RequestMapping("register")
    public String register(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        User user = new User();
        user.setUsername(request.getParameter("username_re"));
        user.setPassword(request.getParameter("password_re"));
        user.setEmail(request.getParameter("email"));
        List<User> verify = userService.find_user(user);
        /*System.out.println(user.getUsername());
        System.out.println(user.getPassword());
        System.out.println(user.getSex());
*/
        System.out.println(verify);
        if (verify.size() > 0) {
            System.out.println("用户已存在");
            response.getWriter().write("<script>\n" +
                    "    alert(\"用户已存在\");\n" +
                    "</script>\n");
            return null;


        } else {
            userService.addUser(user);
            System.out.println("注册成功");
            return "redirect:go_login.do";
        }

    }

    /* @RequestMapping("user_sta")
     public String userstatus(Model model, HttpSession session){
         //获得用户session
         User user = (User) session.getAttribute("USER_SESSION");
         if (user!=null){
             User user1 = new User();
             List<User> user_info = userService.find_user(user);
             for (int i = 0; i < user_info.size(); i++) {
                 System.out.println(user_info.get(i));
                 user1 = user_info.get(i);
             }

             String name = user1.getName();
             String intro = user1.getIntro();

             model.addAttribute("name",name);
             model.addAttribute("intro",intro);
         }
         return "redirect:go_user.do";
     }
 */
    @RequestMapping("quit")
    public String quit(HttpSession session) throws IOException {
        session.setAttribute("USER_SESSION", null);
        return "login";
    }

    @RequestMapping("demo")
    public String demo() {
        return "demo";
    }
}
