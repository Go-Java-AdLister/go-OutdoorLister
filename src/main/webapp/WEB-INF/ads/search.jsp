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
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="text-center">
<form action="" method="post">
<%--  <input type="submit" name="button1" value="CAMPING" class="btn btn btn-secondary btn-lg" />--%>
    <button class="btn" name="button1"><i class="fa-regular fa-campground btn-lg"></i> Camping</button>
<%--  <input type="submit" name="button2" value="" class="btn btn btn-secondary btn-lg"/>--%>
    <button class="btn" name="button2"><i class="fa-regular fa-fish-fins"></i> Fishing</button>
<%--  <input type="submit" name="button3" value="HIKING" class="btn btn btn-secondary btn-lg" />--%>
    <button class="btn" name="button3"><i class="fa-solid fa-person-hiking"></i> Hiking</button>
<%--    <input type="submit" name="button4" value="MISC.." class="btn btn btn-secondary btn-lg" />--%>
    <button class="btn" name="button4"><i class="fa-solid fa-truck-monster"></i> Misc...</button>
</form>
    <div class="container d-flex flex-wrap " style="">
        <c:forEach var="ads" items="${ads}">

            <div class="container col-md-8 mb-3 border" style="">
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
