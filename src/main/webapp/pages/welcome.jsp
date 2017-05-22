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

<c:forEach items="${users}" var="user">
    <p>${user.id} ${user.name} ${user.password}</p>
</c:forEach>

<p/>

<h1>try to play a roulette, you pick ${number}</h1>
<form action="/try" method="post">
    <input type="text" name="setnumber">
    <input type="submit">
</form>

<h1 hidden> ${ result = String.valueOf(Math.round(Math.random()*32))}</h1>

<c:if test="${number == result}">
    <h2>RIGHT!!!</h2>
    <h2>Put-up was ${result}</h2>
</c:if>
<c:if test="${number != result && number != null}">
    <h2>SORRY!!!</h2>
    <h2>Put-up was ${result}</h2>

</c:if>
</body>
</html>
