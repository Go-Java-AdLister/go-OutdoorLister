<%--
  Created by IntelliJ IDEA.
  User: alfredooviedo
  Date: 7/23/22
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="text-center">
<form action="" method="post">
  <input type="submit" name="button1" value="CAMPING " class="btn btn-primary btn-lg me-2" />
  <input type="submit" name="button2" value="FISHING " class="btn btn-primary btn-lg me-2" />
  <input type="submit" name="button3" value="HIKING  " class="btn btn-primary btn-lg me-2" />
    <input type="submit" name="button4" value="MISC  " class="btn btn-primary btn-lg" />
</form>
</div>
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

</body>
</html>
