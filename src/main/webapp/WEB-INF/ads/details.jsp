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

<div calss="bg-image"
     style="background-image: url('https://d29fhpw069ctt2.cloudfront.net/photo/34444/preview/photo-1414016642750-7fdd78dc33d9_npreviews_66e4.jpg');
        height: 70vh;
        background-size: cover;
        background-color: rgba(0, 0, 0, 0.6);">
</div>


</body>
</html>
