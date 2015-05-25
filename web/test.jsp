<%--
  Created by IntelliJ IDEA.
  User: Полина
  Date: 22.05.2015
  Time: 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String value1 = (String)session.getAttribute("typeOfNew");
  String value2 = (String)session.getAttribute("idToDelete");
  String value3 = (String)session.getAttribute("typeToDelete");
%>
<html>
<head>
  <title></title>
</head>
<body>
type of new:
<%= value1 %>
id of deleted
<%= value2 %>
<a href="index.jsp">Main menu</a></br>
</body>
</html>
