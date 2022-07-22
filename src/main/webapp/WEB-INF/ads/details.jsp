<%--
  Created by IntelliJ IDEA.
  User: alfredooviedo
  Date: 7/20/22
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details" />
    </jsp:include>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />







<div class="card text-center">
    <div class="card-header">Ad Details</div>
    <div class="card-body">
        <h1 class="card-title">${ad.title}</h1>
        <h2 class="card-text">${ad.description}</h2>
        <a href="/profile" class="btn btn-primary">User: ${username}</a>
    </div>
    <div class="card-footer text-muted">${ad.createdOn}</div>
</div>



</body>
</html>
