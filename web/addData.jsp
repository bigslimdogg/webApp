<%--
  Created by IntelliJ IDEA.
  User: Полина
  Date: 22.05.2015
  Time: 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add data</title>
</head>
<body>
<form action="dataServlet" method="get">
  Set type of data to add: <input type=text name="typeData" />
  Set type of data to add: <input type=text name="attributeOfData" />
  <input type="submit" name="add" value="add" >
</form>
<a href="index.jsp">Main menu</a></br>
</body>
</html>
