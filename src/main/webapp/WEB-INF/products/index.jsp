<%--
  Created by IntelliJ IDEA.
  User: kennethhowell
  Date: 4/4/22
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View com.codeup.adlister.Products</title>
</head>
<body>
<h1>Here are all the products:</h1>

<c:forEach var="product" items="${products}">
  <div class="product">
    <h2>${product.name}</h2>
    <p>Price: $ ${product.price}</p>
  </div>
</c:forEach>

</body>
</html>
