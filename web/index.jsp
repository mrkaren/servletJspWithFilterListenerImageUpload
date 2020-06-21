<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page</title>
</head>
<body>

<%
    String msg = "";
    if (session.getAttribute("msg") != null) {
        msg = (String) session.getAttribute("msg");
        session.removeAttribute("msg");
    }
%>

<iframe width="600" height="600" src="https://www.youtube.com/embed/Gi4nOvcjiHQ?list=RDGi4nOvcjiHQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<p style="color:red">
    <%=msg%>
</p>

Login:
<form action="/login" method="post">
    <input type="text" name="username" placeholder="please input username" required /><br>
    <input type="password" name="password" placeholder="please input password" required/> <br>
    <input type="submit" value="Login">
</form>
<br>
<br>
<br>
Register:
<form action="/register" method="post" enctype="multipart/form-data">
    <input type="text" name="name" placeholder="please input name"/><br>
    <input type="text" name="surname" placeholder="please input surname"/><br>
    <input type="text" name="username" placeholder="please input username"/><br>
    <input type="password" name="password" placeholder="please input password"/> <br>
    <input type="file" name="image" /> <br>
    <input type="submit" value="Register">
</form>
</body>
</html>
