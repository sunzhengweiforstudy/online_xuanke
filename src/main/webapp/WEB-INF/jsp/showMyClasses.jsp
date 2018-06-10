<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sunzhengwei
  Date: 2018/6/10
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container" style="margin-top: 40px;">
    <ol class="breadcrumb" style="margin-top: 10px">
        <li class="active">首页/我的课程</li>
    </ol>
    <div class="row">
<c:forEach items="${courses}" var="c" varStatus="st">
    <div class="col-md-4">
        <img src="http://sunzhengwei.cn/android.jpg" width="320px">
        <h2>${c.name}</h2>
        <p>${c.teacher}</p>
        <p><a class="btn btn-default" href="deletexuanke?number=${c.id}" role="button">删除&raquo;</a></p>
    </div>
</c:forEach>

</body>
</html>
