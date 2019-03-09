<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="edu.wctc.model.Item" %>
<%--
  Created by IntelliJ IDEA.
  User: bitstudent
  Date: 2/27/2019
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jacks Website</title>
    <link rel="stylesheet" href="./css/DefaultCss.css.css">
</head>
<body>
<div id="container">
    <div id="rcornerstop">
        <h2>Jack's Website</h2>
        <div class="topnav">
            <a href="index.jsp">Home</a>
            <a href="cat.go">Catalog</a>
            <a href="cart.go">Shopping Cart</a>
        </div>
        <br>
    </div>
    <div id="rcorners">
        <h3>Final Bill</h3>
        <form action="bill.go">
            <table>
                <%
                    List recs = (List) request.getAttribute("catalog");
                    Iterator it = recs.iterator();
                    double total = 0;
                    while (it.hasNext()) {
                        Item item = (Item) it.next();
                        out.print("<tr class='purch'><td> " + item.getName() + " </td><td>" +
                                String.format("$%3.2f",item.getPrice()) + "</td></tr>");
                        total+=item.getPrice();
                    }
                    out.print("<tr class='total' ><td>Total:</td><td>" +
                            String.format("$%3.2f",total) + "</td></tr>");
                %>
            </table>
            <input type="submit" value="Complete Order">
        </form>
    </div>
</div>
</body>
</html>
