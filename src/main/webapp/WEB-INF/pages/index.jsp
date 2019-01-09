<%--
  Created by IntelliJ IDEA.
  User: GEISHA
  Date: 2018/12/26
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta charset="UTF-8">
    <title>浮游 --- Fuyou Street Snap</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        body{
            margin: 0px;}

        .imgs{
            margin: 0 auto;
            width: 100%;

        }
        #myCarousel{
            width: 100%;
            top: 100px;
            margin: 0 auto;
            margin-bottom: 2%;
        }

        a:link{
            text-decoration:none;
        }
        a:visited{
            text-decoration:none;
        }
        a:hover{
            text-decoration:none;
        }
        a:active{
            text-decoration:none;
        }
        #pannel{
            width: 100%;
        }

        #left1{
            background-color: rgba(0,0,255,0);
        }


        .navbar{
            height: 100px;
            background-color: #ffffff;
            margin-left: 70px;
            padding: 0px;
            border: 60px solid transparent ;
        }

        .navbar-default{
            border-color:#ffffff;
        }
        li{
            font-size: 16px;
        }

        .container{
            background-color: white;
            padding: 0px;
            height: 120px;
            width:100%;
            position: fixed;
            box-shadow: 0px 2px 3px 0px #abb0b6;
        }


        #head2{
            width:200px;
            margin-bottom: 20px;
            margin-left: 1500px;
            margin-top: -60px;
        }


        #headler{
            top: -20px;
            width: 0px;
            position: relative;
        }

        .media-heading{
            font-weight: lighter;
            font-size: 20px;
            margin-bottom: 5px;
        }

        .btn-primary{
            color: #fff;
            background-color: #555;
        }
    </style>

</head>
<body >
<div id = "pannel">

    <div class="container" style="z-index: 3">

        <nav class="navbar navbar-default navbar-lg" role="navigation">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/view/go_user.do" style="font-size: 200%">
                <h3 class="media-heading" >
                    ${sessionScope.name}${sessionScope.state}
                </h3>
            </a>
            <div class="collapse navbar-collapse" id="navbar-collapse-01">
                <ul class="nav navbar-nav mr-auto">
                    <li class="active"><a href="${pageContext.request.contextPath}/view/go_index.do">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/go_find.do" >发现</a></li>
                    <li><a href="#" >社区</a></li>
                    <li><a href="#" >匹配</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/go_user.do" >我</a></li>
                </ul>
                <form class="navbar-form form-inline my-2 my-lg-0" action="#" role="search">
                    <div class="form-group">
                        <div class="input-group">
                            <input class="form-control" id="navbarInput-01" type="search" placeholder="Search">
                            <span class="input-group-btn">
            <button type="submit" class="btn"><span class="fui-search">搜索</span></button>
          </span>
                        </div>
                    </div>
                </form>
            </div>
        </nav>


        <div id="headler">
            <img src="${pageContext.request.contextPath}/323images/title.png" class="media-object"  id = "head2" >

        </div>




    </div>



    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/323images/lun.jpg" alt="First slide"  class = "imgs"  width="200px">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/323images/2.jpg" alt="Second slide" class = "imgs" >
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/323images/3.jpg" alt="Third slide"     class = "imgs" >
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"  id = "left1">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" id = "right1">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


</div>


    <button onclick="quit()" class="btn btn-embossed btn-primary" style="margin-top: 100px;align-self: center;">退出登录</button>



<script>
    function quit() {
        window.location = "${pageContext.request.contextPath}/view/quit.do"
}
</script>
</body>
</html>