<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie nowego tweeta</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    h1{
        text-align: center;
    }
</style>
</head>
<body>
<div class="container" style="width: 35%;">
    <h1>Dodaj nowego tweeta</h1>
    <form:form method="post" modelAttribute="tweet">
        <div class="md-form">
            <form:input id="formTitle" path="title" class="form-control"/>
            <label for="formTitle">Tytuł</label>
        </div>
        <div class="md-form">
            <form:textarea id="formTweetText" path="tweetText" class="form-control"/>
            <label for="formTweetText">Treść</label>
        </div>
        <div class="md-form">
            <form:select id="formUserId" path="user.id" class="form-control">
                <form:options items="${users}" itemLabel="email" itemValue="id"/>
            </form:select>
            <label for="formUserId">Urzytkownik</label>
        </div>
        <div class="md-form">
            <input type="submit" value="Zapisz" class="btn btn-primary btn-block">
        </div>
    </form:form>
    <p><a href="/" class="btn btn-primary btn-block">Powrót na stronę główną</a></p>
</div>
</body>
</html>
