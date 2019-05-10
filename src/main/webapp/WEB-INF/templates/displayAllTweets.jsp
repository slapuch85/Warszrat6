<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Tweets</title>
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<div class="container" style="width: 100%;">
    <div id="navbar-example2" class="navbar navbar-light bg-light">
        <h2>navBar</h2>
    </div>
    <div class="tweetForm">
        <h4>Dodaj nowego tweeta</h4>
        <form:form method="post" modelAttribute="tweet" action="/tweet/add">
            <div class="md-form">
                <form:input id="formTitle" path="title" class="form-control form-control-sm"/>
                <label for="formTitle" class="disabled">Tytuł</label>
            </div>
            <div class="md-form">
                <form:textarea id="formTweetText" path="tweetText" class="form-control form-control-sm"/>
                <label for="formTweetText" class="disabled">Treść</label>
            </div>
            <div class="md-form">
                <form:select id="formUserId" path="user.id" class="form-control form-control-sm">
                    <form:options items="${allUsers}" itemLabel="email" itemValue="id"/>
                </form:select>
                <label for="formUserId">Urzytkownik</label>
            </div>
            <div class="md-form">
                <input type="submit" value="Zapisz" class="btn btn-primary btn-block">
            </div>
        </form:form>
    </div>

    <div class="content">
        <h2>Lista wszystkich tweetów</h2>
        <table id="tablePreview" class="table table-striped">
            <tr>
                <th>Urzytkownik</th>
                <th>Data utworzenia</th>
                <th>Tytuł</th>
                <th>Treść</th>
            </tr>
            <c:forEach items="${allTweets}" var="tweet">
                <tr>
                    <td>${tweet.user.email}</td>
                    <td>${tweet.created}</td>
                    <td>${tweet.title}</td>
                    <td>${tweet.tweetText}</td>
                </tr>
            </c:forEach>
        </table>
        <p><a href="/" class="btn btn-block btn-primary">Powrót na stronę główną</a></p>
    </div>

</div>

</body>
</html>
