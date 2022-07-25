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
    <script src="https://kit.fontawesome.com/78cc46dd0f.js" crossorigin="anonymous"></script>
</head>
<style>
    body{
        background-color: coral;
    }
</style>
<body style="background-color: #C39876">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="text-center" style="background-color: #C39876">
<form action="" method="post">
<%--  <input type="submit" name="button1" value="CAMPING" class="btn btn btn-secondary btn-lg" />--%>
    <button class="btn" name="button1"><i class="fa-solid fa-campground"></i> Camping</button>
<%--  <input type="submit" name="button2" value="" class="btn btn btn-secondary btn-lg"/>--%>
    <button class="btn" name="button2"><i class="fa-solid fa-fish-fins"></i> Fishing</button>
<%--  <input type="submit" name="button3" value="HIKING" class="btn btn btn-secondary btn-lg" />--%>
    <button class="btn" name="button3"><i class="fa-solid fa-person-hiking"></i> Hiking</button>
<%--    <input type="submit" name="button4" value="MISC.." class="btn btn btn-secondary btn-lg" />--%>
    <button class="btn" name="button4"><i class="fa-solid fa-truck-monster"></i> Misc...</button>
    <button class="btn" name="button5"><i class="fa-solid fa-crosshairs"></i> Hunting</button>
    <button class="btn" name="button6"><i class="fa-solid fa-football"></i> Sports</button>
    <button class="btn" name="button7"><i class="fa-solid fa-tree"></i> Parks&Rec</button>
</form>
    <div class="container d-flex flex-wrap " >
        <c:forEach var="ads" items="${ads}">

            <div class="container col-md-8 mb-3 border" style="background-color: #D8B184">
                <h2><c:out value="${ads.title}"/></h2>
                <h5 class="fst-italic fs-6"><c:out value="${ads.field}"/></h5>
                <p class="fs-5"><c:out value="${ads.description}"/></p>
                <div class=" text-end">
                    <small class="fs-6">Posted on <c:out value="${ads.createdOn}"/></small>
                </div>

            </div>

        </c:forEach>
    </div>
</div>

</body>
</html>
