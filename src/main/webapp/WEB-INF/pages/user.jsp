<%--
  Created by IntelliJ IDEA.
  User: GEISHA
  Date: 2018/12/24
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .media {
            margin: 15px 0 0 0;
        }

        .media-heading {
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .media-body {
            padding-top: 30px;
            width: 300px;
        }


        #head3 {
            width: 150px;
            height: 150px;
        }


        #head2 {
            width: 300px;
            margin-bottom: 20px;
            margin-left: 40%;
        }


        a:link {
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
        }

        a:hover {
            text-decoration: none;
        }

        a:active {
            text-decoration: none;
        }

        #introduce {
            margin-left: 10%;
        }

        #modes {
            margin-left: 10%;
        }

        #myTab {
            text-decoration: none;
        }

        .friend1 {
            padding-top: 0px;
        }

        .friend1 > h4 {
            font-weight: normal;
            font-size: 20px;
            margin-bottom: 0px;
            padding-bottom: 5px;
            padding-top: 5px;
        }

        .text-decoration1 {
            border: none;
        }

        .navbar {
            height: 100px;
            background-color: #ffffff;
            margin-left: 70px;
            padding: 0px;
            border: 60px solid transparent;
        }

        .navbar-default {
            border-color: #ffffff;
        }

        li {
            font-size: 16px;
        }

        .container {
            background-color: white;
            padding: 0px;
            height: 120px;
            width: 100%;
            position: fixed;
            box-shadow: 0px 2px 3px 0px #abb0b6;
        }


        #head2 {
            width: 200px;
            margin-bottom: 20px;
            margin-left: 1500px;
            margin-top: -60px;
        }


        #headler {
            top: -20px;
            width: 0px;
            position: relative;
        }

        .media-heading {
            font-weight: lighter;
            font-size: 20px;
            margin-bottom: 5px;
        }

    </style>
</head>
<body>

<div class="container" style="z-index: 3">

    <nav class="navbar navbar-default navbar-lg" role="navigation">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/view/go_user.do" style="font-size: 200%">
            <h3 class="media-heading">
                ${sessionScope.name}${sessionScope.state}
            </h3>
        </a>
        <div class="collapse navbar-collapse" id="navbar-collapse-01">
            <ul class="nav navbar-nav mr-auto">
                <li><a href="${pageContext.request.contextPath}/view/go_index.do">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/view/go_find.do">发现</a></li>
                <li><a href="#">社区</a></li>
                <li><a href="#">匹配</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/view/go_user.do">我</a></li>
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
        <img src="${pageContext.request.contextPath}/323images/title.png" class="media-object" id="head2">

    </div>


    <div class="media" id="introduce">
        <div class="media-left">
            <img src="${pageContext.request.contextPath}/323images/head1.png" class="media-object" id="head3">
        </div>
        <div class="media-body">
            <h4 class="media-heading">${sessionScope.name}</h4>
            <p>${sessionScope.intro}</p>
        </div>
    </div>

    <div id="modes">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#home" data-toggle="tab">
                    我的相册
                </a>
            </li>
            <li><a href="#ios" data-toggle="tab">我的收藏</a></li>
            <li><a href="#friends" data-toggle="tab">拍友</a></li>

            <li class="dropdown">
                <a href="#" id="myTabDrop1" class="dropdown-toggle"
                   data-toggle="dropdown">足迹
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                    <li><a href="#jmeter" tabindex="-1" data-toggle="tab">jmeter</a></li>
                    <li><a href="#ejb" tabindex="-1" data-toggle="tab">ejb</a></li>
                </ul>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="home">

                <!-- 缩略图 -->
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <a href="#" class="thumbnail">
                            <img src="${pageContext.request.contextPath}/323images/photo/photo1.jpg"
                                 alt="通用的占位符缩略图">
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <a href="#" class="thumbnail">
                            <img src="${pageContext.request.contextPath}/323images/photo/photo2.jpg"
                                 alt="通用的占位符缩略图">
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <a href="#" class="thumbnail">
                            <img src="${pageContext.request.contextPath}/323images/photo/photo3.jpg"
                                 alt="通用的占位符缩略图">
                        </a>
                    </div>
                    <!--   <div class="col-sm-6 col-md-3">
                          <a href="#" class="thumbnail">
                              <img src="/wp-content/uploads/2014/06/kittens.jpg"
                                   alt="通用的占位符缩略图">
                          </a>
                      </div> -->
                </div>

            </div>

            <div class="tab-pane fade" id="ios">
                <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
                    TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
            </div>
            <div class="tab-pane fade" id="friends">
                <!-- 好友列表 -->
                <div class="container">

                    <div class="media">
                        <div class="media-left">
                            <img src="${pageContext.request.contextPath}/323images/friends/headphoto1.jpg"
                                 class="media-object" style="width:60px">
                        </div>


                        <div class="media-body">
                            <div class="friend1">
                                <h4 class="media-heading">文超超超</h4>
                                <p>走一步，看到天明</p>
                            </div>
                        </div>
                    </div>
                    <hr class="text-decoration1">

                    <div class="media">
                        <div class="media-left">
                            <img src="${pageContext.request.contextPath}/323images/friends/headphoto2.jpg"
                                 class="media-object" style="width:60px">
                        </div>

                        <div class="media-body">
                            <div class="friend1">
                                <h4 class="media-heading">西坡利亚的平</h4>
                                <p>逆水行舟</p>
                            </div>
                        </div>
                    </div>
                    <hr class="text-decoration1">

                    <div class="media">
                        <div class="media-left">
                            <img src="${pageContext.request.contextPath}/323images/friends/headphoto3.jpg"
                                 class="media-object" style="width:60px">
                        </div>

                        <div class="media-body">
                            <div class="friend1">
                                <h4 class="media-heading">肥猪猪宅</h4>
                                <p>走向大峡谷</p>
                            </div>
                        </div>
                    </div>
                    <hr class="text-decoration1">

                    <div class="media">
                        <div class="media-left">
                            <img src="${pageContext.request.contextPath}/323images/friends/headphoto4.jpg"
                                 class="media-object" style="width:60px">
                        </div>

                        <div class="media-body">
                            <div class="friend1">
                                <h4 class="media-heading">mo</h4>
                                <p>摸摸大</p>
                            </div>
                        </div>
                    </div>
                    <hr class="text-decoration1">


                    <div class="media">
                        <div class="media-left">
                            <img src="${pageContext.request.contextPath}/323images/friends/headphoto2.jpg"
                                 class="media-object" style="width:60px">
                        </div>

                        <div class="media-body">
                            <div class="friend1">
                                <h4 class="media-heading">福清自</h4>
                                <p>山不在高，有仙则灵</p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div class="tab-pane fade" id="jmeter">
                <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
            </div>
            <div class="tab-pane fade" id="ejb">
                <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
                </p>
            </div>
        </div>
    </div>

</body>
</html>