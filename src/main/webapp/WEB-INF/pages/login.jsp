<%--
  Created by IntelliJ IDEA.
  User: GEISHA
  Date: 2018/12/26
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>登录&注册</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">

    <script>
        function ts() {
            document.getElementById("sta").innerHTML = "<font color='black'>${sta}</font>";
        }
    </script>

    <script>
        //延时跳转
        function tz() {
            var go_index = "${go_index}";
            if (go_index === "go") {
                window.setTimeout(function () {
                    window.location = "${pageContext.request.contextPath}/view/go_index.do"
                }, 3000)
            }

        }
    </script>

</head>

<body onload="ts();tz()">

<div class="jq22-container" style="padding-top:100px">
    <div class="login-wrap">
        <div class="login-html" >
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab" >登录</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>

            <div class="login-form">
                <form role="form" action="${pageContext.request.contextPath}/view/login.do" method="post">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="username" class="label">用户名</label>
                        <input id="username" type="text" class="input" name="username">
                    </div>
                    <div class="group">
                        <label for="password" class="label">密码</label>
                        <input id="password" type="password" class="input" data-type="password" name="password">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span > 自动登录</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="登录"  style="color: white;font-size: 18px;">
                        <span id="sta"></span>
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#forgot">忘记密码</a>
                    </div>
                </div>
                </form>
                <form action="${pageContext.request.contextPath}/view/register.do" method="post" role="form">
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="username_re" class="label">用户名</label>
                        <input id="username_re" type="text" class="input" name="username_re" >
                    </div>
                    <div class="group">
                        <label for="password_re" class="label">密码</label>
                        <input id="password_re" type="password" class="input" data-type="password" name="password_re">
                    </div>
                    <div class="group">
                        <label for="password_too" class="label">重复输入密码</label>
                        <input id="password_too" type="password" class="input" data-type="password" name="password_too"
                        onkeyup="yanzhen()"><span id="tishi"></span>
                    </div>
                    <div class="group">
                        <label for="email" class="label">电子邮箱</label>
                        <input id="email" type="text" class="input" name="email" placeholder="填写便于找回密码,可不填">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="注册"   style="color: white;font-size: 18px; "
                        onclick="return check()" id="button">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">

                    </div>
                </div>
                    </form>
            </div>
        </div>
    </div>
</div>

<script>
    function yanzhen() {
        var pwd1 = document.getElementById("password_re").value;
        var pwd2 = document.getElementById("password_too").value;

        <!-- 对比两次输入的密码 -->
        if(pwd1 === pwd2)
        {
            document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("button").disabled = false;
        }
        else {
            document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
            document.getElementById("button").disabled = true;
        }
    }
</script>
<script type="text/javascript">
    function check(){
        var flag = true;
        var admin = document.getElementById("username_re").value;
        var password = document.getElementById("password_re").value;
        var password2 = document.getElementById("password_too").value;
        if ("" == admin){
            alert("请输入用户名！");
            flag = false;
            return false;
        }
        else if ("" == password){
            alert("请输入密码！");
            flag = false;
            return false;
        }
        else if ("" == password2) {
            alert("请再输入一次密码!");
            flag = false;
            return false;
        }
        else if ("" == email){
            alert("请填写您的电子邮箱!");
            flag = false;
            return false;
        }
        if(flag == true){
            //form.submit();
            return true;
        }
    }
</script>



</body>
</html>