<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
    <h2 class="text-center">用户注册</h2>
    <form class="col-md-offset-4 col-md-4 form-horizontal"  action="${pageContext.request.contextPath}/view/register.do" method="post" >

    <div class="form-group">
           <label class="col-md-3 control-lable">用户名</label>
           <div class="col-md-8">
           <input type="text" class="form-control" name="username"  placeholder="用户名" id="name" />
           </div>
    </div>

    <div class="form-group">
           <label class="col-md-3 control-lable">密码</label>
           <div class="col-md-8">
           <input type="password" class="form-control" name="password"  placeholder="密码" id="pwd1"/>
           </div>
    </div>   
    <div class="form-group">
           <label class="col-md-3 control-lable">确认密码</label>
           <div class="col-md-8">
           <input type="password" class="form-control" name="password_too"  placeholder="请再次输入密码" id="pwd2" onkeyup="yanzhen()" >
               <span id="tishi"></span>
           </div>
    </div>
  
    <div class="form-group">
           <label class="col-md-3 control-lable">性别</label>
           <div class="radio col-md-8">
           <label class="radio-inline">
           <input type="radio" name="sex" value="male"/>男
           </label>
          <label class="radio-inline">
          <input type="radio" name="sex" value="female"/>女
          </label>
    </div>   
    </div>     
     <%--<div class="form-group">--%>
     <%--<label class="col-md-3 control-lable">上传头像</label>--%>
     <%--<div class="col-md-8">--%>
     <%--<input type="file" name="text"/>--%>
     <%--</div>--%>
     <%--</div>--%>
     <div class="form-group">
     <div class="col-md-8 col-md-offset-3">
     <button class="btn btn-primary btn-block" type="submit" id="button" onclick="return check()">提交</button>
     </div>
     </div>
    </form>
    </div>
<script>
    function yanzhen() {
        var pwd1 = document.getElementById("pwd1").value;
        var pwd2 = document.getElementById("pwd2").value;

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
        var admin = document.getElementById("name").value;
        var password = document.getElementById("pwd1").value;
        var password2 = document.getElementById("pwd2").value;
      if ("" == admin){
        alert("请输入账号！");
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
      if(flag == true){
        //form.submit();
        return true;
      }
    }
    </script>

</body>
</html>
