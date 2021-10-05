<%--
  Created by IntelliJ IDEA.
  User: 赖日海
  Date: 2021/9/24
  Time: 8:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map <String ,String> map = new HashMap<String,String>() ;
    boolean flag = false;
%>
<%
    map.put("赖日海","419109070419");
    map.put("王淼","419109070420");
    map.put("赵鹏翔","419109070423");
    map.put("甄学瑞","419109070424");
    map.put("熊瞿亮","419109070421");
    map.put("test","123");
%>
<%!
    public boolean validate(String username,String password){
        String passwd = map.get(username);
        if (passwd!=null&&!passwd.equals("")&&passwd.equals(password)){
            return true;
        }else {
            return false;
        }
    }
%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (password!=null&&!password.equals("")&&username!=null&&!username.equals("")){
        flag = validate(username,password);
        if (flag){
            session.setAttribute("username",username);
            session.setAttribute("password",password);
            response.sendRedirect("userinfo.jsp");
        }else {
            response.sendRedirect("error.jsp");
        }
    }else {
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
