<%@ page import="mvc.model.network.Network" %>
<%@ page import="mvc.model.dao.ModelDao" %>
<%@ page import="mvc.model.dao.DaoFactory" %>
<%@ page import="mvc.model.dao.ConnectionDao" %>
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
    <title>Connect elements</title>
</head>
<body>
<%
  Network net = new Network();
  ModelDao modelDao = DaoFactory.getModelDao();
  ConnectionDao connectionDao = DaoFactory.getConnectionDao();
  modelDao.readAllModels(net);
  for(PathElement elem: net.getPathElements().keySet()){
    System.out.println(elem);
  }
%>
<form method="get" action="connectionServlet">
  Set id of elements to connect or disconnect
  <input type=text name="id1" /><input type=text name="id2" />
  <input type=text name="command" />
  Command:<input type="submit" name="execute" value="execute" >

</form>
<a href="index.jsp">Main menu</a></br>
</body>
</html>
