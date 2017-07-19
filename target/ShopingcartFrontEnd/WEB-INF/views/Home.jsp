<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<!-- <script src="resources/js/bootstrap.js"></script> -->
<!-- you can drag and drop the path -->
<script type="text/javascript"></script>
</head>
<body>

	<center>
		<h2>Welcome to Shopping Cart</h2>
	</center>
	${message}
	<hr color="blue">

	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<c:if test="${isAdmin=='true'}">

		<jsp:include page="admin/AdminHome.jsp"></jsp:include>

	</c:if>

	<c:if test="${isAdminClickedCategories=='true'}">

		<jsp:include page="admin/Category.jsp"></jsp:include>

	</c:if>

		<c:if test="${isAdminClickedSuppliers=='true'}">
<jsp:include page="admin/Supplier.jsp"></jsp:include> <br>
</c:if>

	<c:if test="${isAdminClickedProducts=='true'}">
		<jsp:include page="admin/Product.jsp"></jsp:include>
		<br>
	</c:if>
	<br>
	<c:if test="${isUserClickedLogin=='true'}">

		<jsp:include page="Login.jsp"></jsp:include>

	</c:if>


	<c:if test="${isUserClickedRegister=='true' }">
		<jsp:include page="Registration.jsp"></jsp:include>
	</c:if>
		<c:if test="${isUserClickedContact=='true' }">
		<jsp:include page="Contact.jsp"></jsp:include>
	</c:if>

</body>

</html>