<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Tweets</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<div class="container" style="width: 75%;">
    <h2>Lista wszystkich tweetów</h2>
    <table id="tablePreview" class="table table-striped">
        <tr>
            <th>Urzytkownik</th>
            <th>Data utworzenia</th>
            <th>Tytuł</th>
            <th>Treść</th>
        </tr>
        <c:forEach items="${tweets}" var="tweet">
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

</body>
</html>
