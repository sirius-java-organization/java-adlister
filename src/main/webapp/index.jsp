
<%--
  Created by IntelliJ IDEA.
  User: kennethhowell
  Date: 3/30/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counterLocal = 0;%>
<%! int counterLocal2 = 2;%>
<% counterLocal += 1;%>
<% counterLocal2 = counterLocal2 * 2;%>
<% request.setAttribute("message", "Hey there, Sirius! Thanks for paying attention during a long lecture :)"); %>
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
</body>
</html>