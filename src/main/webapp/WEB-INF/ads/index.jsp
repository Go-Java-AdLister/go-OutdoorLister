<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>

<body style="background-color: #C39876">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container pt-5">
    <h1>So much to do, So little time to do it</h1>
</div>
<div class="container d-flex flex-wrap">
    <c:forEach var="ads" items="${ads}">

        <div class="container col-md-6 p-3">
            <h2><c:out value="${ads.title}"/></h2>
            <h5 class="fst-italic fs-6"><c:out value="${ads.field}"/></h5>
            <p class="fs-5"><c:out value="${ads.description}"/></p>
            <div class="d-flex">
                <small class="fs-6">Posted on <c:out value="${ads.createdOn}"/></small>
                <a class="ms-auto" href="/details?id=${ads.id}">More Details</a>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
