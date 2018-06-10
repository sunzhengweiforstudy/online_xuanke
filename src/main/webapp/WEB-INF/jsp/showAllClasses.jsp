<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sunzhengwei
  Date: 2018/6/6
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<table class="table table-striped" style="margin-top: 100px;width: 800px;margin-left: 200px">
    <thead>
    <th>编号</th>
    <th>课程</th>
    <th>老师</th>
    <th>地点</th>
    <th>学分</th>
    <th>已选/总数</th>
    </thead>
    <tbody>
        <c:forEach items="${courses}" var="c" varStatus="st">
        <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>${c.teacher}</td>
            <td>${c.place}</td>
            <td>${c.score}</td>
            <td>${c.choose}/${c.total}</td>
            <td><a href="changexuanke?id=${c.id}" class="btn btn-success">添加</a> </td>
        </tr>
        </c:forEach>

</table>

</body>
</html>
