<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="edu.wctc.model.Item" %>
>
<%--
  Created by IntelliJ IDEA.
  User: bitstudent
  Date: 2/20/2019
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Jacks Website.</title>
  <link href="DefaultCss.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container">
  <div id="nav">
    <h2>Jacks Website.</h2>
    <a href="productsList.jsp">Products List </a>
    <a href="productDetail.jsp">Products Detail </a>
    <a href="viewShoppingCart.jsp">View Cart </a>
  </div>
  <br>
</div>
<div id="homeBody">
  <h3>Home</h3>
  <form action="viewShoppingCart.jsp">
    <table>
      <%
        List recs = (List) request.getAttribute("productList");
        Iterator it = recs.iterator();
        while (it.hasNext()) {
            Item item = (Item) it.next();
            out.print("<tr><td><img src'" +
                    item.getImage() +
                    "' height='100'></td><td>" +
                    item.getName() + "</td><td>$" +
                    item.getPrice() + "</td><td>Add to Cart<input type='checkbox' name='cartItem' value="
                    + item.getProductNumer()+ "></td></tr>");
          }
        %>
    </table>
    <input type="submit" value="Purchase">
  </form>
</div>
</body>
</html>
