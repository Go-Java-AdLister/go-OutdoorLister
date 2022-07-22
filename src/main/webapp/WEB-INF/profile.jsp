<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body style="background-color: #8C795D">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="container">
        <h1 class="mt-5 mb-5">Welcome back, <c:out value="${user.username}"/>!</h1>
    </div>
    <div class="container mt-5 mb-5">
        <h3>You have created <c:out value="${posts}"/> ads.</h3>
    </div>
    <hr>
    <div class="container d-flex">
        <c:forEach var="ads" items="${ads}">

            <div class="container col-md-5 p-0">
                <h2><c:out value="${ads.title}"/></h2>
                <h5 class="fst-italic fs-6"><c:out value="${ads.field}"/></h5>
                <p class="fs-5"><c:out value="${ads.description}"/></p>
                <small class="fs-6">Posted on <c:out value="${ads.createdOn}"/></small>
                <a href="/details?id=${ads.id}">More Details</a>
            </div>

        </c:forEach>
    </div>
</div>



</body>
</html>
