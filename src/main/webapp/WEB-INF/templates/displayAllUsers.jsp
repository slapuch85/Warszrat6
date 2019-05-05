<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: slawekp
  Date: 30.04.19
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all Users</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    .container{

    }
</style>
</head>
<body>

<div class="container" style="width: 50%">
    <table id="tablePreview" class="table table-striped">
        <tr>
            <th scope="col">Imię</th>
            <th scope="col">Nazwisko</th>
            <th scope="col">email</th>
            <th scope="col">Akcja</th>
        </tr>
        <c:forEach items="${allUsers}" var="user">
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>
                    <form action="/user/remove/" method="post">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="submit" value="Usuń" class="btn btn-block btn-primary">
                    </form>
                    <form action="/user/edit/" method="post">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="submit" value="Edytuj" class="btn btn-block btn-primary">
                    </form>

                </td>
            </tr>
        </c:forEach>
    </table>
    <p><a href="/" class="btn btn-block btn-primary">Powrót na stronę główną</a></p>
</div>
</body>
</html>
