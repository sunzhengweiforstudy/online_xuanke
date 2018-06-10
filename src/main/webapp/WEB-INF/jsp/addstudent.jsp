<%--
  Created by IntelliJ IDEA.
  User: sunzhengwei
  Date: 2018/6/10
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .b{
        border-radius:3px;
    }
</style>
<form action="" method="post" style="margin-top: 100px;margin-left: 500px;width: 260px">
    <div class="list-group">
        <button class="list-group-item active">创建学生信息</button>
        <table  style="border-collapse:separate; border-spacing:5px 10px;">
            <tr>
                <td>姓名</td>
                <td><input type="text" class="b" name="name"></td>
            </tr>
            <tr>
                <td>学号</td>
                <td><input type="text" class="b" name="number"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" class="b" name="password"></td>
            </tr>
            <tr>
                <td>专业</td>
                <td><input type="text" class="b" name="major"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="text" class="b" name="sex"></td>
            </tr>
            <tr>
                <td>日期</td>
                <td><input type="text" class="b" name="date"></td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;<input type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset">
    </div>
</form>
