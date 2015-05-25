<%@ page import="mvc.model.pe_model.PathElement" %>
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
    <title>Delete elements</title>
</head>
<body>
  <form method="get" action="deleteServlet">
    Set id of element to delete: <input type=text name="idOfDeletedElement" />
    Set type of element to delete<input type=text name="typeOfDeletedElement" />
    <input type="submit" name="delete" value="delete" >
  </form>
  <a href="index.jsp">Main menu</a></br>
</body>
</html>
