<%--
  Created by IntelliJ IDEA.
  User: 赖日海
  Date: 2021/9/21
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>错误提示页</title>
</head>
<body>
用户名或密码错误,请稍后重试...
     <%
         //10秒后重定向至登录页
         response.setHeader("refresh","10;URL = login.jsp");
         %>
        <h1 style="text-align: center">404 登录失败....</h1>
</body>
</html>
