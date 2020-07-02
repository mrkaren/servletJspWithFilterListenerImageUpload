<%@ page import="model.ToDo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<ToDo> todos = (List<ToDo>) request.getAttribute("todos");
%>
<ul>
    <% for (ToDo todo : todos) { %>
    <li><a href="/todo?id=<%=todo.getId()%>"><%=todo.getTitle()%> </a>  - <%=todo.getStatus()%>
    </li>
    <% } %>
</ul>

