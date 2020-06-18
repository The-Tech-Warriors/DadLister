<%--
  Created by IntelliJ IDEA.
  User: moriahhumphries
  Date: 6/17/20
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit or delete your (d)Ad" />
    </jsp:include>

    <style><%@include file="/css/dadlister.css"%></style>
</head>
<body>


<form action="/edit-delete" method="post">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<html>
<body>

<h1>Edit or Delete Your (d)Ad</h1>
<h1>${ad.title}</h1>
<c:out value="${ad.title}"/>
<c:out value="${ad.description}"/>
</body>
</html>
