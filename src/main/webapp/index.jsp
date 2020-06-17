<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Welcome to my site!" />
        </jsp:include>

    </head>
<body>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
    <style><%@include file="/WEB-INF/css/dadlister.css"%></style>

    <div class="container text-center">
        <h1>Welcome to the Dadlister!</h1>
        <form action="/register">
            <a href="/register"><input type="submit" class="btn btn-light" value="Sign Me Up!"></a>
        </form>
        <form action="/login">
            <a href="/login"><input type="submit" class="btn btn-light" value="Take me to my profile!"></a>
        </form>

    </div>
</body>
</html>
