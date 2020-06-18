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
                    <h5> Card Title </h5>
                    <p>Lorem Ipsum Dipsum hortata. Mixcall Horcho. Mixwell Chingo. More Bingo. Lorem Ipum doth be hard.</p>
                </div>
        </div>

    </div>





<%--ads card--%>

    <div class="ad-cards-container">

            <div class="ads-card">
                <h3 class="title">Dad Ad 1</h3>
                <div class="bar">
                    <div class="emptybar"></div>
                    <div class="filledbar"></div>
                </div>
                <div class="circle">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <circle class="stroke" cx="60" cy="60" r="50"/>
                    </svg>
                </div>
            </div>
            <div class="ads-card">
                <h3 class="title">Dad Ad 2</h3>
                <div class="bar">
                    <div class="emptybar"></div>
                    <div class="filledbar"></div>
                </div>
                <div class="circle">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <circle class="stroke" cx="60" cy="60" r="50"/>
                    </svg>
                </div>
            </div>
            <div class="ads-card">
                <h3 class="title">Dad Ad 3</h3>
                <div class="bar">
                    <div class="emptybar"></div>
                    <div class="filledbar"></div>
                </div>
                <div class="circle">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <circle class="stroke" cx="60" cy="60" r="50"/>
                    </svg>
                </div>
            </div>
            <div class="ads-card">
                <h3 class="title">Dad Ad 4</h3>
                <div class="bar">
                    <div class="emptybar"></div>
                    <div class="filledbar"></div>
                </div>
                <div class="circle">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <circle class="stroke" cx="60" cy="60" r="50"/>
                    </svg>
                </div>
            </div>

    </div>
    </div>

</body>
</html>
