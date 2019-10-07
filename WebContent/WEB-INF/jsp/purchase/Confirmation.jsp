<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Order confirmed</title>
    <style>
        table,
        th,
        td {
            border: 1px solid black;
        }
    </style>
</head>

<body>
    <jsp:include page="../common/header.jsp" />

    <div class="jumbotron">
            <div class="container">
              <h1 class="display-3">Thanks! Your order has been confirmed.</h1>
              <p>We know you wont regret shopping with us. Enjoy!</p>
              <p><a class="btn btn-primary btn-lg" href="/SpringMVC" role="button">Back to Home &raquo;</a></p>
            </div>
    </div>
    <table class="order-table table table-dark">
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
        <c:forEach items="${order.items}" var="item" varStatus="loop">
            <tr>
                <td>
                    <c:out value="${item.name}"></c:out>
                </td>
                <td>
                    <c:out value="$${item.price}"></c:out>
                </td>
                <td>
                    <c:out value="${item.quantity}" />
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
<jsp:include page="../common/footer.jsp" />

</html>