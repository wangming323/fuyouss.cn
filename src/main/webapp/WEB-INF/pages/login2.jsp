<%--
  Created by IntelliJ IDEA.
  User: GEISHA
  Date: 2018/12/19
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>登录</title>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap-grid.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap-reboot.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap-reboot.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.bundle.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>


    <style type="text/css">
        .form-control {

            width: 300px;
        }

        #form_div {
            width: 100%;
            height: 1000px;
            background-image: url(${pageContext.request.contextPath}/323images/login.jpg);
            background-size: cover;
        }

        #form_panel {
            width: 450px;
            padding: 8px;
            background-color: rgba(0, 0, 0, 0.3);
            float: right;
            margin: 150px 700px 0 0;
            color: white;
        }

        #pw {
            margin: 0 0 0 155px;
            text-decoration: none;
            color: white;
        }
    </style>


    <script>
        function tishi() {
            document.getElementById("sta").innerHTML = "<font color='white'>${sta}</font>";
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
    <%--<script>
        var s = '${yanzhen}';
        $(document).ready(function () {
            $("#submit").click(function () {
                if (s === "go") {
                    $('#sta').load('${pageContext.request.contextPath}/suss.txt');
                    s = null;
                } else if (s === "no") {
                    $('#sta').load('${pageContext.request.contextPath}/fail.txt');
                    s = null;
                }
            })
        });

    </script>--%>

</head>
<body onload="tz();tishi()">
<div id="form_div">
    <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/view/login.do" method="post"
          id="login_form">
        <div id="form_panel">

            <h3 class="text-center">用户登录</h3>

            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">账号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="username" name="username"
                           placeholder="请输入账号" onblur="userCheck()">
                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="password"
                           placeholder="请输入密码" onblur="pwCheck()">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> 请记住我
                            <a href="#" id="pw">忘记密码</a>
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button id="submit" type="submit" class="btn btn-default">登录</button>
                    <button type="button" class="btn btn-default" onclick="x()" id="zhuce">注册</button>
                    <span id="sta"></span>
                </div>
            </div>

        </div>
    </form>
</div>

<script>
    function x() {
        self.location = "${pageContext.request.contextPath}/view/go_register.do";
    }
</script>




</body>
</html>
