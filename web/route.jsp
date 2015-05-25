<%@ page import="mvc.model.network.Network" %>
<%@ page import="mvc.model.dao.ModelDao" %>
<%@ page import="mvc.model.dao.DaoFactory" %>
<%@ page import="mvc.model.pe_model.PathElement" %>
<%@ page import="mvc.model.route_providers.RouteProviderWithLessPrice" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.nio.file.Path" %>
<%@ page import="mvc.model.route_providers.RouteProviderWithLessTimeDelay" %>
<%@ page import="mvc.model.route_providers.RouteProviderWithLessUnits" %>
<%--
  Created by IntelliJ IDEA.
  User: Полина
  Date: 22.05.2015
  Time: 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
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
<form method="get" action="routeServlet">
  Set ids of elemnts to find route and method of search(price,delay,units):
  <input type=text name="id1" /><input type=text name="id2" />
  <input type=text name="search" />
  Command:<input type="submit" name="findRoute" value="findRoute" >
</form>
<%
  PathElement el1 = (PathElement)session.getAttribute("element1");
  PathElement el2 = (PathElement)session.getAttribute("element2");
  String typeOfSearch = (String)session.getAttribute("command");
  switch (typeOfSearch){
    case "price":
      RouteProviderWithLessPrice r1 = new RouteProviderWithLessPrice();
      ArrayList<PathElement> result1 = r1.getRouteID(el1.getID(), el2.getID(), net);
      for(PathElement elem: result1){
        System.out.println(elem);
      }
      break;
    case "delay":
      RouteProviderWithLessTimeDelay r2 = new RouteProviderWithLessTimeDelay();
      ArrayList<PathElement> result2 = r2.getRouteID(el1.getID(), el2.getID(), net);
      for(PathElement elem: result2){
        System.out.println(elem);
      }
      break;
    case "units":
      RouteProviderWithLessUnits r3 = new RouteProviderWithLessUnits();
      ArrayList<PathElement> result3 = r3.getRouteID(el1.getID(), el2.getID(), net);
      for(PathElement elem: result3){
        System.out.println(elem);
      }
      break;
    default:
      System.out.println("unexpected type of search");
      break;
  }
%>
<a href="index.jsp">Main menu</a></br>
</body>
</html>
