<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<style><%@include file="/css/dadlister.css"%></style>

    <div class="container create-container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label class="title" for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label class="description" for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" required></textarea>
            </div>
            <div class="form-group">
                <label class="category" for="category">Category</label>
                <select name="category" id="category">
                    <option value="1">Help It's Broken</option>
                    <option value="2">Motor Moments</option>
                    <option value="3">BBQ Banter</option>
                    <option value="4">Wise Old Man</option>
                    <option value="5">Sport Stuff</option>
                    <option value="6">Tuff Stuff</option>
                </select>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
