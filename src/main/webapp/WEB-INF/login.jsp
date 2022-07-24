<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
<style>
    form{

    }
</style>
</head>
<body style="background-color: #C39876">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>
    <div class="image-fluid"
         style="background-image: url('img/cover.png');
        height: 60vh;
        background-size: cover;
        /*background-attachment: fixed;*/
        background-position: center;
        ">
    </div>

<%--<img src="img/OD%20lister-logo.jpg"/>--%>
<%--<img src="img/cover.png"/>--%>






</body>
</html>
