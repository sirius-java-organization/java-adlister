<%--
  Created by IntelliJ IDEA.
  User: kennethhowell
  Date: 4/6/22
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quotes</title>
</head>
<body>

<form method="post" action="/search-quotes">
    <label>Search for a quote:
        <input name="userSearch" type="text">
    </label>


    <button type="submit">Look for a quote</button>
</form>

<c:if test="${searchTerm !=  null}">
<%--    <h1>You searched for: ${searchTerm}</h1> --%>
    <h1>You searched for: <c:out value="${searchTerm}"></c:out>
    </h1>

</c:if>

<c:forEach var="quote" items="${quoteListView}">
    <p>${quote}</p>
</c:forEach>

</body>
</html>
