<%--
  Created by IntelliJ IDEA.
  User: kennethhowell
  Date: 4/5/22
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>What language do you prefer?</title>
</head>
<body>

<form action="/input-language" method="post">

  <label>What language would you like to have as your local setting?
    <input type="text" name="language-pref"> <button type="submit">Submit your language</button> </label>

</form>

</body>
</html>
