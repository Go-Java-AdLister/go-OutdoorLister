<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
</jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

<div class="navbar navbar-expand-lg navbar-light " style="background-color: antiquewhite">
    <div class="container-fluid" style="background-color: antiquewhite">
        <!-- Brand and toggle get grouped for better mobile display -->
<%--        <div class="navbar-header">--%>
<%--            <a class="navbar-brand" href="/ads">Adlister</a>--%>
<%--        </div>--%>

        <a href="/ads" class="navbar-brand">
            <img src="/img/navlogo1.png" height="50" alt="Adlister">
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="nav navbar-nav">

            <li><a href="/ads/search" class="nav-item nav-link">Search</a></li>

            <c:if test="${empty user}">
                <li><a href="/register" class="nav-item nav-link active">Register</a></li>
            </c:if>

            <c:choose>
                <c:when test="${not empty user}">
                    <li><a href="/profile" class="nav-item nav-link active">Profile</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/login" class="nav-item nav-link active">Login</a></li>
                </c:otherwise>
            </c:choose>
            
            <c:if test="${not empty user}">
            <li><a href="/logout" class="nav-item nav-link">Logout</a></li>
            </c:if>

            <c:if test="${not empty user}">
                <li><a href="/ads/create" class="nav-item nav-link">Create Ad</a></li>
            </c:if>


        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</div>
</nav>
