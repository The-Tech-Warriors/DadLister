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
<style><%@include file="/css/profile.css"%></style>

<div class="container-fluid text-center create-container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>

    <form class="create-dad-btn text-center d-flex" action="/ads/create">
        <input type="submit" class="btn create-btn" value="Create Ad">
        <input type="submit" class="btn create-btn" value="Edit Ad">
        <input type="submit" class="btn create-btn" value="Delete Ad">
    </form>

    <%--   profile card--%>

    <div class="center">

        <div class="property-card">
            <a href="#">
                <div class="property-image">
                    <div class="property-image-title">
                        <!-- Optional <h5>Card Title</h5> If you want it, turn on the CSS also. -->
                    </div>
                </div>
            </a>

            <div class="property-description">
                <h5> ${sessionScope.user.username} </h5>
                <p>${sessionScope.user.email}</p>
                <a href="/update-profile">Edit Profile</a>
            </div>
        </div>

    </div>






    <%--ads card--%>

    <div class="ad-cards-container">

        <c:forEach var="ad" items="${ads}">
            <div class="ads-card">
                <div class="title">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <p><a href="/ads/ad?daddy_id=${ad.id}">View Ad</a></p>
                </div>
                <div class="bar">
                    <div class="emptybar"></div>
                    <div class="filledbar"></div>
                </div>
            </div>
        </c:forEach>
        <%--            <div class="ads-card">--%>
        <%--                <h3 class="title">Dad Ad 2</h3>--%>
        <%--                <div class="bar">--%>
        <%--                    <div class="emptybar"></div>--%>
        <%--                    <div class="filledbar"></div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--            <div class="ads-card">--%>
        <%--                <h3 class="title">Dad Ad 3</h3>--%>
        <%--                <div class="bar">--%>
        <%--                    <div class="emptybar"></div>--%>
        <%--                    <div class="filledbar"></div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--            <div class="ads-card">--%>
        <%--                <h3 class="title">Dad Ad 4</h3>--%>
        <%--                <div class="bar">--%>
        <%--                    <div class="emptybar"></div>--%>
        <%--                    <div class="filledbar"></div>--%>
        <%--                </div>--%>
        <%--            </div>--%>

    </div>
</div>

</body>
</html>