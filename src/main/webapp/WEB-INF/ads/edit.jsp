<%--
  Created by IntelliJ IDEA.
  User: alfredooviedo
  Date: 7/25/22
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Ad" />
    </jsp:include>
</head>

<body style="background-color: #C39876">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <form action="" method="post">
        <label for="column" class="fs-2 mt-5">What would you like to change?</label>
        <select name="column" id="column">
            <option value="title">Title</option>
            <option value="field">Field</option>
            <option value="description">Description</option>
        </select>
        <input type="hidden" name="id" value="${id}">
        <button>Submit</button>
    </form>


    <c:choose>
    <c:when test="${column == 'title'}">
        <form action="" method="post">
            <label>Title</label>
            <input id="title" name="value" class="form-control" type="text">
            <input type="hidden" name="id" value="${id}">
            <input type="hidden" name="column" value="title">
            <button>Submit</button>
        </form>
    </c:when>
    <c:when test="${column == 'field'}">
        <form action="" method="post">
            <label>Choose a Category:</label>

            <select name="value" id="categories">
                <option value="camping">Camping</option>
                <option value="hunting">Hunting</option>
                <option value="fishing">Fishing</option>
                <option value="sports">Sports</option>
                <option value="hiking">Hiking</option>
                <option value="misc">Misc</option>
                <option value="parks&rec">Parks & Rec.</option>
            </select>
            <input type="hidden" name="id" value="${id}">
            <input type="hidden" name="column" value="field">
            <button>Submit</button>
        </form>
    </c:when>
    <c:when test="${column == 'description'}">
    <form action="" method="post">
        <label for="description">Description</label>
        <textarea id="description" name="value" class="form-control" ></textarea>
        <input type="hidden" name="id" value="${id}">
        <input type="hidden" name="column" value="description">
        <input type="submit" class="btn btn-block btn-primary">

    </form>
</div>

    </c:when>
</c:choose>


</body>
</html>
