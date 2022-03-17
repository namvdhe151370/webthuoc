<%-- 
    Document   : test
    Created on : Mar 10, 2022, 3:43:18 PM
    Author     : hellb
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach items="${listCategory}" var="C">
        <li class="list-group-item">${C.name}</li>
        </c:forEach>
</body>
</html>
