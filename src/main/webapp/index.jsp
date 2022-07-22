<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
<%--        <h1>Welcome to the Adlister!</h1>--%>
    </div>
    <div calss="image-fluid"
         style="background-image: url('img/cover.png');
        height: 100vh;
        background-size: cover;
        background-attachment: fixed;
        background-position: center;
        ">
    </div>
</body>
</html>
