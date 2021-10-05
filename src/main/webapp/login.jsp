<%--
  Created by IntelliJ IDEA.
  User: 阿海
  Date: 2021/9/21
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Login</title>
    <!--------------    icons效果css    ------------------>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!--------    总体样式      ---------->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="form-container">
    <form action="validate.jsp" id="form" method="post">
        <h3>Login</h3>
        <i class="fas fa-user"></i>
        <input type="text" id="username" name="username" placeholder="username" />
        <i class="fas fa-lock"></i>
        <input type="password" id="password" name="password" placeholder="password" />
        <input type="submit" onclick="userVerity()" value="login">
    </form>
</div>
</body>
<%--------------------  低配版压感效果  -----------------------%>
    <script>
        const form = document.getElementById('form');

       form.addEventListener('mousemove', (e) =>{

               var x = (window.innerWidth / 2 - e.pageX) / 14;
              var y = (window.innerHeight / 2 - e.pageY) / 14;
              form.style.transform = 'rotateX('+x+'deg) rotateY('+y+'deg)';
        });

      form.addEventListener('mouseleave',function (){
           form.style.transform = 'rotateX(0deg) rotateY(0deg)';
       });
    </script>
    <%------------------------ 空验证提示   -----------------------%>
    <script>
        function userVerity() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            if (username === ''){
                alert("用户名不能为空哦~");
                return;
            }
            if (password === ''){
                alert("密码不能为空哦~");
            }
        }
    </script>
</html>