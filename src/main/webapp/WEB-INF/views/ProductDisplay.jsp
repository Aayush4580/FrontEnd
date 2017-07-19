<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<center>
		<div class="container" id="ShowProducts">
			<table class="table table-striped">

				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Price</th>

				</tr>


				<c:forEach items="${productList}" var="product">
					<tr>
						<td><c:out value="${product.id}"></c:out></td>
						<td><c:out value="${product.name}"></c:out></td>
						<td><c:out value="${product.description}"></c:out></td>
						<td><c:out value="${product.price}"></c:out></td>
						<td><a class="btn btn-success" href="<c:url value='/addToCart' />">Add to Cart</a></td>
					</tr>

				</c:forEach>

			</table>
		</div>

	</center>
</body>
</html>