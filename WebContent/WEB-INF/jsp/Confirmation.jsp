
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order confirmed</title>
<style>
table, th, td {
border: 1px solid black;
}
</style>
</head>
<body>
<h1>Order confirmed</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
    </tr>
    <c:forEach items="${order.items}" var="item" varStatus="loop">
        <tr>
            <td><c:out value="${item.name}"></c:out></td>
            <td><c:out value="$${item.price}"></c:out></td>
            <td><form:input path="${item.quantity}" /></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="2"><input type="submit" value="Confirm"></td>
    </tr>
</table>
</body>
</html>