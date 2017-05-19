<%--
  Created by IntelliJ IDEA.
  User: Illko
  Date: 19.05.2017
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<h1>welcome user ${user}</h1>
<form action="/save" method="post">
    <input type="text" name="username">
    <input type="text" name="password">
    <input type="submit">
</form>
</body>
</html>
