<%--
  Created by IntelliJ IDEA.
  User: bitstudent
  Date: 2/20/2019
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Cookie items = new Cookie("items", request.getParameter("items"));
items.setMaxAge(60*60*24);
response.addCookie( items );
%>
<html>
<link href="DefaultCss.css" rel="stylesheet" type="text/css">
<head>
    <title>View Shopping Cart</title>
</head>
<body>
<a href="home.jsp">Home Page </a>
<a href="productsList.jsp">Products List </a>
<a href="productDetail.jsp.jsp">Products Detail </a>
VIEW SHOPPING CART. STUFF WILL GO HERE.
<p><b>Items:</b>
<%= request.getParameter("items")%>
</p>
</body>
</html>
