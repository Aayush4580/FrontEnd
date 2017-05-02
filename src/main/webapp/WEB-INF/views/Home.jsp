<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


	<a href="Login"> Login</a>

	<a href="Registration"> Register</a>


	<br>
	<c:if test="${isUserClickedLogin=='true'}">

		<jsp:include page="Login.jsp"></jsp:include>

	</c:if>


	<c:if test="${isUserClickedRegister=='true' }">
		<jsp:include page="Registration.jsp"></jsp:include>
	</c:if>

<jsp:include page="navbar.jsp" flush="true"/>






</body>
</html>