<%@ page import="model.ToDo" %>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    List<ToDo> todos = (List<ToDo>) request.getAttribute("todos");
    User user = (User) session.getAttribute("user");
%>
Welcome <%=user.getName()%> <% if (user.getPictureUrl() != null) { %>
<img src="/image?path=<%=user.getPictureUrl()%>" width="50"/> <%}%>

<a href="/logout">logout</a> <br>

<a href="/">Index</a> <br><br>

Add Todo:
<form action="/addTodo" method="post">

    <input name="title" type="text"/><br>
    <input name="deadline" type="date"/><br>
    <input type="submit" value="create">
</form>

<ul>
    <% for (ToDo todo : todos) { %>
    <li><a href="/todo?id=<%=todo.getId()%>"><%=todo.getTitle()%> </a>  - <%=todo.getStatus()%>
    </li>
    <% } %>
</ul>
</body>
</html>
