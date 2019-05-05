<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: slawekp
  Date: 29.04.19
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formularz dodawania nowego usera</title>
</head>
<body>
<form:form action="/user/merge" method="post" modelAttribute="user">
    <input type="hidden" name="id" value="${user.id}">
    <form:input path="firstName"/>
    <form:errors path="firstName"/>
    <form:input path="lastName"/>
    <form:errors path="lastName"/>
    <form:input path="email"/>
    <input type="submit" value="Zapisz">
</form:form>
<p><a href="/">Powrót na stronę główną</a></p>
</body>
</html>
