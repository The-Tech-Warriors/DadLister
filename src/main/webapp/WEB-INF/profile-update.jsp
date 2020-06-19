<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<style><%@include file="/css/profile.css"%></style>
<div class="container register-container">
    <h1>Update, ${sessionScope.user.username}!</h1>
    <h1>Please fill in your information.</h1>
    <form action="/update-profile" method="post">
        <div class="form-group">
            <label class="username" for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" required>
        </div>
        <div class="form-group">
            <label class="email" for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" required>
        </div>
        <input type="hidden" id="id" name="id" value="${sessionScope.user.id}">
        <input type="submit" class="btn btn-dark btn-block">
    </form>
</div>
</body>
</html>