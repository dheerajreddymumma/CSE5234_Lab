<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Payment entry form</title>

</head>

<body>
	<jsp:include page="../common/header.jsp" />

	<form:form modelAttribute="paymentInfo" method="post" action="submitPayment">
		<table class="order-table table table-dark">
			<tr>
				<td>Credit Card Number</td>
				<td>
					<form:input path="creditCardNumber" />
				</td>
			</tr>
			<tr>
				<td>Expiration Date</td>
				<td>
					<form:input path="expirationDate" />
				</td>
			</tr>
			<tr>
				<td>CVV Code</td>
				<td>
					<form:input path="cvvCode" />
				</td>
			</tr>
			<tr>
				<td>Card Holder Name</td>
				<td>
					<form:input path="cardHolderName" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><input class="purchase-button" type="submit" value="Purchase"></td>
			</tr>
		</table>
	</form:form>
	<jsp:include page="../common/footer.jsp" />

</body>

</html>