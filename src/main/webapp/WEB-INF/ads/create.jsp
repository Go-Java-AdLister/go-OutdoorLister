<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body style="background-color: #C39876">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 class="mb-3">Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group mb-2">
                <label>Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="date_created">Date:</label>
                <input type="date" id="date_created" name="date">
                <label>Choose a Category:</label>
                <select name="field" id="categories">
                    <option value="camping">Camping</option>
                    <option value="hunting">Hunting</option>
                    <option value="fishing">Fishing</option>
                    <option value="sports">Sports</option>
                    <option value="hiking">Hiking</option>
                    <option value="misc">Misc</option>
                    <option value="parks&rec">Parks & Rec.</option>


                </select><br>
                <hr>
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
<div calss="bg-image"
style="background-image: url('https://d29fhpw069ctt2.cloudfront.net/photo/34479/preview/photo-1413752567787-baa02dde3c65_npreviews_7b80.jpg');
        height: 70vh;
        background-size: cover;
        background-color: rgba(0, 0, 0, 0.6);">
</div>
</body>
</html>
