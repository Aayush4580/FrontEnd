<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="validate">

<input type="text" name="userName" placeholder="Username">  <br>
<input type="text"  name="password" placeholder="Password">  <br>
<input type="submit"  value="Login">

</form>

<%-- Please login with your credentials
	<br> ${message}
	<c:url var="action" value="/validate"></c:url>
	


<c:url var="action" value="j_spring_security_check"></c:url>
	<form name='loginForm' action="${action}" method="post">

		<div class="input-group margin-bottom-sm">
			<span class="input-group-addon"><i
				class="fa fa-envelope-o fa-fw"></i></span> <input class="form-control"
				type="text" name="username" placeholder="User ID">
		</div>
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
			<input class="form-control" type="password" name="password"
				placeholder="Password">
		</div>

	<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit"
			class="btn btn-default" value="Login">
	</form> --%>

</body>
</html>