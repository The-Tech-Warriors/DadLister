<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <style><%@include file="/css/dadlister.css"%></style>

    <div class="container text-center create-container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <p><a href="/ads/ad?daddy_id=${ad.id}">View Ad</a></p>
        </div>
    </c:forEach>

    <form class="text-center" action="/ads/create">
        <input type="submit" class="btn create-btn" value="Create Ad">
    </form>

</body>
</html>
