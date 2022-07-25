<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body style="background-color: #C39876">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <div class="container">
        <h1 class="mt-5 mb-5">Welcome back, <c:out value="${user.username}"/>!</h1>
    </div>
    <div class="container mt-5 mb-5">
        <h3>You have created <c:out value="${posts}"/> ads.</h3>
    </div>
    <hr>
    <div class="container d-flex flex-wrap">
        <c:forEach var="ads" items="${ads}">

            <div class="container col-md-8 mb-3 border" style="background-color: #D8B184">
                <h2><c:out value="${ads.title}"/></h2>
                <h5 class="fst-italic fs-6"><c:out value="${ads.field}"/></h5>
                <p class="fs-5"><c:out value="${ads.description}"/></p>
                <div class="d-flex">
                    <small class="fs-6">Posted on <c:out value="${ads.createdOn}"/></small>
                    <button class="ms-auto" name="edit" onclick="window.location.href = '/edit?id=${ads.id}'">edit</button>
                    <button name="delete" onclick="window.location.href = '/delete?id=${ads.id}'">delete</button>
                </div>

            </div>

        </c:forEach>
    </div>
</div>
<script type="text/javascript">
    function openPage(pageURL)
    {
        window.location.href = pageURL;
    }
</script>


</body>
</html>
