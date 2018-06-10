<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sunzhengwei
  Date: 2018/6/10
  Time: 15:58
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
<jsp:include page="header-admin.jsp"/>
    <div>
        <table class="table table-striped" style="margin-top: 100px;width: 800px;margin-left:100px">
            <thead>
            <th>序号</th>
            <th>姓名</th>
            <th>学号</th>
            <th>密码</th>
            <th>专业</th>
            <th>性别</th>
            </thead>
            <tbody>
            <c:forEach items="${students}" var="c" varStatus="st">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.number}</td>
                <td>${c.password}</td>
                <td>${c.major}</td>
                <td><c:choose>
                    <c:when test="${c.date=='1'}">
                        男
                    </c:when>
                    <c:otherwise>
                        女
                    </c:otherwise>
                </c:choose></td>
                    <%--<td>${c.date}</td>--%>
                <td><a href="#" class="btn btn-success">修改</a>&nbsp;<a href="#" class="btn btn-warning">删除</a></td>

            </tr>
            </c:forEach>

        </table>
    </div>
    <div>
        <jsp:include page="addstudent.jsp"/>
    </div>
</body>
</html>
