<%@ page import="mvc.model.network.Network" %>
<%@ page import="mvc.model.dao.ModelDao" %>
<%@ page import="mvc.model.dao.ConnectionDao" %>
<%@ page import="mvc.model.pe_model.PathElement" %>
<%@ page import="mvc.model.dao.DaoFactory" %>
<%@ page import="mvc.model.route_providers.RouteProviderWithLessPrice" %>
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
    <title>Information about elements</title>
</head>
<body>
<%
  Network net = new Network();
  ModelDao modelDao = DaoFactory.getModelDao();
  modelDao.readAllModels(net);
  for(PathElement elem: net.getPathElements().keySet()){
    System.out.println("\n" + elem);
  }

%>
<form method="get" action="informationServlet">
  Set id of element to see information about it: <input type=text name="idForInfo" />
  <input type="submit" name="show" value="show" >
</form>
<%
  PathElement value = (PathElement)session.getAttribute("elementToShow");
  RouteProviderWithLessPrice r = new RouteProviderWithLessPrice();
  r.getDescription(value);
%>
<a href="index.jsp">Main menu</a></br>
</body>
</html>
