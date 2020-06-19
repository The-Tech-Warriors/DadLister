<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<style>
    <%@include file="/css/AllAds.css" %>
</style>


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
            <div class="hero-section">
                <div class="card-grid">
                    <c:forEach var="ad" items="${ads}">
                        <a href="/ads/ad?daddy_id=${ad.id}" class="card">
                            <div class="card__background" style="background-image: url(/img/dad.png)"></div>
                            <div class="card__content">
                                <p class="card__category">Category</p>
                                <h3 class="card__heading">${ad.title}</h3>
                                <p>${ad.description}</p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </c:when>
        <c:when test="${param.category == param.category}">
            <div class="hero-section">
                <div class="card-grid">
                    <c:forEach var="cat" items="${category}">
                        <a href="/ads/ad?daddy_id=${cat.id}" class="card">
                            <div class="card__background" style="background-image: url(/img/dad.png)"></div>
                            <div class="card__content">
                                <p class="card__category">Category</p>
                                <h3 class="card__heading">${cat.title}</h3>
                                <p>${cat.description}</p>

                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            ${"No Match!"}
        </c:otherwise>
    </c:choose>

</div>


<%--ALL ADS PAGE --CARDS--%>
<%--<div class="hero-section">--%>
<%--    <div class="card-grid">--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/2.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/3.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/4.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--        </li>--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/5.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="hero-section">--%>
<%--    <div class="card-grid">--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/2.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/3.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/4.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--        </li>--%>
<%--        <a class="card" href="#">--%>
<%--            <div class="card__background" style="background-image: url(/img/5.png)"></div>--%>
<%--            <div class="card__content">--%>
<%--                <p class="card__category">Category</p>--%>
<%--                <h3 class="card__heading">Example Card Heading</h3>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</div>--%>


</body>
</html>
