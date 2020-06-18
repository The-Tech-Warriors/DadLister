<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <style><%@include file="/css/dadlister.css"%></style>

    <div class="container register-container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label class="username" for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label class="email" for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label class="password" for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" required>
            </div>
            <div class="form-group">
                <label class="confirm" for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" required>
            </div>
            <input type="submit" class="btn btn-dark btn-block">
        </form>
    </div>
</body>
</html>
