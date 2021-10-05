<%--
  Created by IntelliJ IDEA.
  User: 赖日海
  Date: 2021/9/24
  Time: 8:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = (String) session.getAttribute("username");
    if (username==null){
        response.sendRedirect("login.jsp");
    }
    String password = (String) session.getAttribute("password");
    if (password==null){
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <title>学生信息页面</title>
    <link rel="stylesheet" href="css/userinfo.css">
</head>
<body>
<div class="form-container">
    <form action="validate.jsp" id="form" method="get">
        <h3>学生信息</h3>
        <br>
        <span>学生姓名：<%=username%></span>
        <br>
        <span>学号：<%=password%></span>
        <br>
        <span>班级：2 班</span>
    </form>
</div>
</body>
</html>
