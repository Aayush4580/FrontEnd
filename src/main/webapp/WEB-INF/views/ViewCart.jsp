<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

 <center><div class="container" id="ShowCategories">
<table class="table table-striped">
					<thead>
						<tr>
							<th>No of Items</th>
							<th>Product Name</th>
							<th>Product Description</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
			
			
			<c:forEach items="${cartItems}" var="myCart">
			<tr>
			<td><c:out value="${myCart.id}"></c:out></td>
			<td><c:out value="${myCart.price}"></c:out></td>
			<td><c:out value="${myCart.description}"></c:out></td>
			
			
				<td><a class="btn btn-danger" href="<c:url value='/delete_cart_items/${myCart.id}' />">Delete</a></td>
				<td><a class="btn btn-primary" href="<c:url value='/manage_category_edit/${category.id}' />">Edit</a></td>
			</tr>
			
			</c:forEach>
		
		</table>
		<a class="btn btn-success" href="<c:url value='/validate' />">Back</a> &nbsp; &nbsp;
		<a class="btn btn-success" href="<c:url value='/buy' />">Buy</a>
		</div>
		</center>
		
		
	
</body>
</html>