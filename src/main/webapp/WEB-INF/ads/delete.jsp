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
        <jsp:param name="title" value="Edit or delete your add" />
    </jsp:include>
</head>
<body>
<form action="/edit-delete" method="post">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<html>
<head>
    <title>Edit or Delete Your (d)Ad</title>
</head>
<body>
<c:out value="${ad.title}"/>
<c:out value="${ad.description}"/>
</body>
</html>
