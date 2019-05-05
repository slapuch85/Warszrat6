<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="/resources/js/showHiddenDiv.js" type="text/javascript"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>

        body {
            background-color: floralwhite;
        }

        .container {
            background-color: brown;
            height: max-content;
        }
        label{
            margin-left: 0px;
        }
        .hiddenDiv{
            display: none;
        }

        button{
            margin-top: 10px;
            margin-bottom: 10px;
        }

    </style>

</head>
<body>

<div class="container">
    <h1 style="text-align: center; color: white;">jee - exam - 6</h1>

    <div class="card text-center mb-3" style="width: 30rem; margin: auto">
        <div class="card-body">
            <h5 class="card-title">Zadanie 3</h5>
            <button type="button" id="showDiv" class="btn btn-primary btn-block">Pokaż listę tweetów</button>
            <div class="hiddenDiv">
                <p><a href="/displayAllTweets" class="btn btn-danger btn-block">Pokaż listę wszystkich tweetów</a></p>
                <form method="post" action="/tweetList">
                    <div class="md-form">
                        <p><select name="id" class="form-control">
                            <c:forEach items="${users}" var="user">
                                <option value="${user.id}">
                                        ${user.email}
                                </option>
                            </c:forEach>
                        </select></p>
                    </div>
                    <div class="md-form">
                        <input type="submit" value="Pokaż listę wybranego urzytkownika" class="btn btn-block btn-danger">
                    </div>
                </form>
            </div>
            <p><a href="/user/search_tweets/Programo" class="btn btn-primary btn-block">Link do tweetow zaczynajacych
                sie na "Programo"</a></p>
        </div>
    </div>

    <div class="card text-center mb-3" style="width: 30rem; margin: auto">
        <div class="card-body">
            <h5 class="card-title">Zadanie 4</h5>
            <p><a href="/user/add" class="btn btn-primary btn-block">Formularz dodawania nowego urzytkownika</a></p>
            <p><a href="/tweet/add" class="btn btn-primary btn-block">Formularz dodawania nowego tweeta</a></p>
        </div>
    </div>

    <div class="card text-center mb-3" style="width: 30rem; margin: auto">
        <div class="card-body">
            <h5 class="card-title">Zadanie 5</h5>
            <p><a href="/user/all" class="btn btn-primary btn-block">Wyświetl listę urzytkowników</a></p>
        </div>
    </div>
</div>
</body>
</html>
