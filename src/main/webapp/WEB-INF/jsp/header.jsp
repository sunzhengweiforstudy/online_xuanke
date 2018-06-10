<%--
  Created by IntelliJ IDEA.
  User: sunzhengwei
  Date: 2018/6/6
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    function Login() {
        var keyword=prompt("请输入管理员密钥","*******");
        if (keyword="admin"){
            window.location.href='adminlogin';
    }
    }
</script>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生在线选课系统</a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="http://www.baidu.com">主页</a></li>
                <li><a href="/showAllClasses">所有课程</a></li>
                <li><a href="/showMyClasses">我的课程</a></li>
                <li><a href="javascript:Login()" >管理员登录</a></li>
            </ul>
           <% if (session.getAttribute("username")==null){
               %>
            <form class="navbar-form navbar-right" action="loginStudent" method="post"> <div class="form-group">
                <input type="text" placeholder="学号" class="form-control" name="number" required>
            </div>
                <div class="form-group">
                    <input type="password" placeholder="密码" class="form-control" name="password" required>
                </div>
                <button type="submit" class="btn btn-success">登录</button>
            </form>

<%
} %>
        </div>

    </div>
</nav>
