<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<h1>Here Are all the ads!</h1>
<div class="container d-flex">

    <c:forEach var="ads" items="${ads}">

        <div class="container col-md-5 p-0">
            <h2><c:out value="${ads.title}"/></h2>
            <h5 class="fst-italic fs-6"><c:out value="${ads.field}"/></h5>
            <p class="fs-5"><c:out value="${ads.description}"/></p>
            <small class="fs-6">Posted on <c:out value="${ads.createdOn}"/></small>
            <a href="/WEB-INF/ads/details.jsp">More Details</a>
        </div>
    </c:forEach>
</div>

</body>
</html>
