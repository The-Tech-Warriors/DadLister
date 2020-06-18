<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<style><%@include file="/css/AllAds.css"%></style>


<div class="container">
    <h1>Here Are all the ads!</h1>

    <%--Dropdown form to filter categories--%>
    <form action="/filter" method="get">
        <div class="form-group">
            <label for="category">Filter by Category</label>
            <select name="category" id="category">
                <option value="1">Help It's Broken</option>
                <option value="2">Motor Moments</option>
                <option value="3">BBQ Banter</option>
                <option value="4">Wise Old Man</option>
                <option value="5">Sport Stuff</option>
                <option value="6">Tuff Stuff</option>
            </select>
            <button type="submit">filter</button>
        </div>
    </form>


    <%--  need to make conditionals that display what user selects  --%>
    <c:choose>
        <c:when test="${param.category == null}">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-6">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <p><a href="/ads/ad?daddy_id=${ad.id}">View Ad</a></p>
                </div>
            </c:forEach>
        </c:when>
        <c:when test="${param.category == param.category}">
            <c:forEach var="cat" items="${category}">
                <div class="col-md-6">
                    <h2>${cat.title}</h2>
                    <p>${cat.description}</p>
                    <p><a href="/ads/ad?daddy_id=${cat.id}">View Ad</a></p>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            ${"No Match!"}
        </c:otherwise>
    </c:choose>

</div>




</body>
</html>
