<%--
  Created by IntelliJ IDEA.
  User: kennethhowell
  Date: 3/30/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counterLocal = 0;%>
<%! int counterLocal2 = 2;%>
<% counterLocal += 1;%>
<% counterLocal2 = counterLocal2 * 2;%>
<% request.setAttribute("message", "Hey there, Sirius! Thanks for paying attention during a long lecture :)"); %>
<% request.setAttribute("favoriteBooksAndStories", new String[] {"Dao De Ching", "A Good Man is Hard to Find", "Franny and Zooey", "Cat's Cradle"}); %>
<html>
<head>
    <title>Counter Page</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<h1>The current count is <%= counterLocal %>.</h1>


<h3>Our hardcoded counter of "2" started at 2 and multiplies by 2. Currently that counter is = <%= counterLocal2 %></h3>


<h5>Experiment #3 - do we need a servlet to access param?</h5>

<h5>Do we see the result from our query string? <br>
My favorite food is: ${param.fav_food}</h5>

<h5>What was our secret message?<br>
${message}</h5>

View the page source!
<%-- this is a JSP comment, you will *not* see this in the html --%>
<!-- this is an HTML comment, you *will* see this in the html -->

<%--Below: Using 'choose' with hardcoded bools--%>
<c:choose>
    <c:when test="${false}">
        <p>boolean_expression_1 was true</p>
    </c:when>
    <c:when test="${false}">
        <p>boolean_expression_1 was false, and boolean_expression_2 was true</p>
    </c:when>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>
</c:choose>
<%--Below: using forEach with a String array init/dec up top in the JSP--%>

<ul>
    <c:forEach items="${favoriteBooksAndStories}" var="element">
        <li>${element}</li>
        <c:if test="${element.equalsIgnoreCase('Franny and Zooey')}">
            <h5>Was written by J.D. Salinger :D</h5>
        </c:if>
    </c:forEach>
</ul>


</body>
</html>

