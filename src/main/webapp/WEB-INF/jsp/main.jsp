<%--
  Created by IntelliJ IDEA.
  User: sunzhengwei
  Date: 2018/6/6
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body role="documnet">
<script type="text/javascript">
    function exit() {
        alert("退出");
    }
</script>
<%
    String username= (String) session.getAttribute("username");
%>
<jsp:include page="header.jsp"/>
<div class="container theme-showcase" role="main">
    <div class="jumbotron" style="height: 350px;background-size:over;background-image:url(http://sunzhengwei.cn/bg.jpg)">
        <h1 style="color:gray;font-size:36px">登录成功</h1>
        <p>welcome to online student selection course</p>
    </div>

    <div class="container">
        <ol class="breadcrumb" style="margin-top: 10px">
            <li class="active">热门课程</li>
        </ol>
        <div class="row">

            <div class="col-md-4">
                <img src="http://sunzhengwei.cn/android.jpg" width="320px">
                <h2>Android从入门到改行</h2>
                <p>sunzhengwei.cn</p>
                <p><a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <img src="http://sunzhengwei.cn/c.jpg" width="320px">
                <h2>C语言从入门到放弃</h2>
                <p>sunzhengwei.cn</p>
                <p><a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a></p>
            </div>
            <div class="col-md-4">
                <img src="http://sunzhengwei.cn/mysql.jpg" width="320px"  style="background-size:over">
                <h2>Mysql从入门到删库</h2>
                <p>sunzhengwei.cn</p>
                <p><a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
