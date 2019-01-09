<%--
  Created by IntelliJ IDEA.
  User: GEISHA
  Date: 2018/12/28
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    request.setAttribute("basePath",basePath);
%>--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>发现</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/find.css" type="text/css">

    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/baguetteBox.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gallery-clean.css" type="text/css">


    <script src="${pageContext.request.contextPath}/js/jquery-1.5.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/easing.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/timers.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/dualSlider.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function(){
            $(".carousel").dualSlider({
                auto:true,
                autoDelay: 6000,
                easingCarousel: "swing",
                easingDetails: "easeOutBack",
                durationCarousel: 1000,
                durationDetails: 500
            });
        });

    </script>

    <style type="text/css">

        .caroursel{margin:150px auto;}


        .caroursel{margin:150px auto;}


        .media-heading{
            font-weight: lighter;
            font-size: 20px;
            margin-bottom: 5px;
        }

        .container{
            background-color: white;
            padding: 0px;
            height: 120px;
            width:100%;
            position: fixed;
            box-shadow: 0px 2px 3px 0px #abb0b6;
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
        h2{
            margin-top: 3%;
        }
        #fat-btn{
            margin-left: 50%;
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

        .page{
            width:100%;
            margin: 10px 0 30px 50px;
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


    </style>



</head>
<body style="overflow-x:hidden">

<div class="container" style="z-index: 99">

    <nav class="navbar navbar-default navbar-lg" role="navigation">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/view/go_user.do" style="font-size: 200%">
            <h3 class="media-heading" >
                ${sessionScope.name},睡觉睡醒了
            </h3>
        </a>
        <div class="collapse navbar-collapse" id="navbar-collapse-01">
            <ul class="nav navbar-nav mr-auto">
                <li><a href="${pageContext.request.contextPath}/view/go_index.do">首页</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/view/go_find.do" >发现</a></li>
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


<div>
    <img src="${pageContext.request.contextPath}/323images/head/guangchang.jpg" width = "100%" >
</div>
<h2 class="text-center" >今日推荐</h2>
<article class="jq22-container">
    <div class = "caroursel poster-main" data-setting = '{
	        "width":1500,
	        "height":650,
	        "posterWidth":504,
	        "posterHeight":705,
	        "scale":0.8,
	        "dealy":"2000",
	        "algin":"middle"
	    }'>
        <ul class = "poster-list">
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo1.jpg" width = "100%" height="100%"></li>
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo2.jpg" width = "100%" height="100%"></li>
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo3.jpg" width = "100%" height="100%"></li>
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo4.jpg" width = "100%" height="100%"></li>
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo5.jpg" width = "100%" height="100%"></li>
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo6.jpg" width = "100%" height="100%"></li>
            <li class = "poster-item"><img src="${pageContext.request.contextPath}/323images/photo/photo7.jpg" width = "100%" height="100%"></li>
        </ul>

        <div class = "poster-btn poster-prev-btn"></div>
        <div class = "poster-btn poster-next-btn"></div>
    </div>
</article>

<h2 class="text-center" >最新文章</h2>
<div class="carousel">
    <div class="panel">
        <div class="details_wrapper">
            <div class="details">
                <div class="detail">
                    <h2 class="Lexia-Bold"><a href="#">或许你也可以如此</a></h2>
                    <a href="#" class="more"  >透过相机的眼睛，我小小的世界里也有奇妙的世界</a>
                </div>
                <div class="detail">
                    <h2 class="Lexia-Bold"><a href="#">黄昏的午后</a></h2>
                    <a href="#" class="more">远看天边，等阳光静静的洒在我的脸上</a>
                </div>
                <div class="detail">
                    <h2 class="Lexia-Bold"><a href="#">凌晨三点的车站</a></h2>
                    <a href="#" class="more">目向远方，等着你，还未来的你</a>
                </div>
            </div>
        </div>
        <div class="paging">
            <div id="numbers"></div>
            <a href="javascript:void(0);" class="previous" title="Previous" >Previous</a>
            <a href="javascript:void(0);" class="next" title="Next">Next</a>
        </div>
    </div><!-- /panel -->
    <div class="backgrounds">
        <div class="item item_1"><img src="${pageContext.request.contextPath}/323images/head/head2.jpg"/></div>
        <div class="item item_2"><img src="${pageContext.request.contextPath}/323images/head/head3.jpg"/></div>
        <div class="item item_3"><img src="${pageContext.request.contextPath}/323images/head/head4.jpg"/></div>
    </div>
</div>


<div class="htmleaf-page" style="margin-left: -100px">
    <div class="page gallery-container">
        <!-- <h1>Bootstrap 3 Gallery</h1>   -->
        <div class="tz-gallery">

            <div class="row">

                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox" href="images/park.jpg">
                            <img src="${pageContext.request.contextPath}/323images/articles/1.png" alt="Park">
                        </a>
                        <div class="caption">
                            <h3>老街</h3>
                            <p>回到过去那个年代，细细回味那个年代的风流</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox" href="images/bridge.jpg">
                            <img src="${pageContext.request.contextPath}/323images/articles/2.png" alt="Bridge">
                        </a>
                        <div class="caption">
                            <h3>小吃</h3>
                            <p>街头小吃，永远是呢么吸引人，还记得曾经站在小摊前的你嘛</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox" href="images/tunnel.jpg">
                            <img src="${pageContext.request.contextPath}/323images/articles/3.png" alt="Tuneel">
                        </a>
                        <div class="caption">
                            <h3>串串</h3>
                            <p>喝着啤酒，吃着烤串</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox" href="images/coast.jpg">
                            <img src="${pageContext.request.contextPath}/323images/articles/4.png" alt="Coast">
                        </a>
                        <div class="caption">
                            <h3>街</h3>
                            <p>和那个最好的她去明晃晃的压街</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox" href="images/rails.jpg">
                            <img src="${pageContext.request.contextPath}/323images/articles/5.png" alt="Rails">
                        </a>
                        <div class="caption">
                            <h3>房</h3>
                            <p>异样的街道房屋，也有不一样的异域风情</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox" href="images/traffic.jpg">
                            <img src="${pageContext.request.contextPath}/323images/articles/6.png" alt="Traffic">
                        </a>
                        <div class="caption">
                            <h3>书</h3>
                            <p>那坐在小院，公园看书的风景还记得嘛</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>


<button id="fat-btn" class="btn btn-primary" data-loading-text="Loading..."
        type="button"> 更多精彩文章
</button>

<h3>hello world!!!!</h3>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/baguetteBox.min.js"></script>
<script type="text/javascript">
    baguetteBox.run('.tz-gallery');
</script>


<script src="${pageContext.request.contextPath}/js/jquery.carousel.js"></script>
<script>
    Caroursel.init($('.caroursel'))
</script>


</body>

</html>
