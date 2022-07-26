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
</head>
<body style="background-color: #C39876">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="card text-center" style="background-color: #D8B184">
    <h2 class="card-header">Ad Details</h2>
    <div class="card-body">
        <h1 class="card-title">${ad.title}</h1>
        <h2 class="card-text">${ad.description}</h2>
        <h5>Posted by: ${username}</h5>
    </div>
    <div class="card-footer text-muted">
        <h5> Created: ${ad.createdOn}</h5>
    </div>
</div>

<div calss="bg-image"
     style="background-image: url('https://d29fhpw069ctt2.cloudfront.net/photo/34444/preview/photo-1414016642750-7fdd78dc33d9_npreviews_66e4.jpg');
        height: 70vh;
        background-size: cover;
        background-color: rgba(0, 0, 0, 0.6);">
</div>


</body>
</html>
