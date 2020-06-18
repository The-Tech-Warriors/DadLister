<%--
  Created by IntelliJ IDEA.
  User: valeriameza
  Date: 6/16/20
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dad Ad</title>
</head>
<body>
<style><%@include file="/css/SingleAd.css"%></style>

<h1>Test</h1>
<c:out value="${ad.title}"/>
<c:out value="${ad.description}"/>


<%--Card--%>
<div id="container">

    <!-- Start	Product details -->
    <div class="product-details">

        <!-- 	Product Name -->
        <h1> Dad Name</h1>

        <!-- The most important information about the product -->
        <p class="information">"AD INFO HERE</p>



        <!-- 		Control -->
        <div class="control">

            <!-- Start Button buying -->
            <button class="btn">
                <span class="schedule">Schedule Now</span>
            </button>
            <!-- End Button buying -->

        </div>

    </div>


    <!-- 	Start product image & Information -->

    <div class="product-image">

        <img src="/img/DadListerDad.png" alt="Omar Dsoky">

        <!-- 	product Information-->
        <div class="info">
            <h2>Dad Info</h2>
            <ul>
                <p>Bio Here</p>
            </ul>
        </div>
    </div>
    <!--  End product image  -->


</div>



</body>
</html>
