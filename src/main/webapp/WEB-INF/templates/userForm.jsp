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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div class="container" style="width: 35%;">
    <h1>Dodaj nowego urzytkownika</h1>
    <form:form method="post" modelAttribute="user">
        <div class="md-form">
            <form:input id="formFirstName" path="firstName" class="form-control"/>
            <label for="formFirstName">First name</label>
            <form:errors path="firstName"/>
        </div>
        <div class="md-form">
            <form:input id="formLastName" path="lastName" class="form-control"/>
            <label for="formLastName">First name</label>
            <form:errors path="lastName"/>
        </div>
        <div class="md-form">
            <form:input id="formEmail" path="email" class="form-control"/>
            <label for="formEmail">E-mail</label>
        </div>
        <input type="submit" value="Zapisz" class="btn btn-primary btn-block">
    </form:form>
    <p><a href="/" class="btn btn-primary btn-block">Powrót na stronę główną</a></p>
</div>
</body>
</html>
