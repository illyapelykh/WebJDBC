<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1>try to play a roulette, you pick ${number}</h1>
<form action="/try" method="post">
    <input type="text" name="setnumber">
    <input type="submit">
</form>


${result = String.valueOf(Math.random() * 32)}


<c:if test="${number == result}">
    <c:out value="You are right"/>
    <c:out value="Random was set as "/>
    <h1>blala ${result}</h1>
</c:if>
<c:if test="${number != result}">
    <c:out value="You are not right"/>
    <c:out value="Random was set as "/>
    <h1>blala ${result}</h1>

</c:if>
</body>
</html>
