<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>  --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Bootstrap Example</title>
<!-- <meta charset="utf-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
	<center>
		<div class="container">


			<h2>Manage Categories</h2>

			<div id="CreateCategory">

				<form action="manage_category_add" method="get" class="form-inline">

					<!-- <input type="text" name="id"> -->
					<div class="form-group">
						<label for="focusedInput">Id</label> <input class="form-control"
							id="focusedInput" type="text" name="id">
					</div>
					<!-- <input type="text" name="name"> -->
					<div class="form-group">
						<label for="focusedInput">Name</label> <input class="form-control"
							id="focusedInput" type="text" name="name">
					</div>
					<!-- <input type="text" name="description"> -->
					<div class="form-group">
						<label for="focusedInput">Description</label> <input
							class="form-control" id="focusedInput" type="text"
							name="description">
					</div>
					<!-- <input type="submit"value="Create Category"> -->
					<button type="submit" class="btn btn-success">Create
						Category</button>
				</form>


			</div>
			<br>

			<div id="UpdateCategory">

				<form action="manage_category_update" method="post"
					class="form-inline">

					<%-- <input type="text" name="id"  value="${selectedCategory.id}"> --%>
					<div class="form-group">
						<label for="focusedInput">Id</label> <input class="form-control"
							id="focusedInput" type="text" name="id"
							value="${selectedCategory.id}">
					</div>
					<%-- <input type="text" name="name" value="${selectedCategory.name}">  --%>
					<div class="form-group">
						<label for="focusedInput">Name</label> <input class="form-control"
							id="focusedInput" type="text" name="name"
							value="${selectedCategory.name}">
					</div>
					<%-- <input type="text" name="description" value="${selectedCategory.description}"> --%>
					<div class="form-group">
						<label for="focusedInput">Description</label> <input
							class="form-control" id="focusedInput" type="text"
							name="description" value="${selectedCategory.description}">
					</div>
					<input type="submit" class="btn btn-primary"
						value="Update Category">
					<!-- <button type="submit" class="btn btn-primary">Update Category</button> -->
				</form>

			</div>


			<h2>Delete / Update the Categories</h2>
			<div class="container" id="ShowCategories">

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Category ID</th>
							<th>Category Name</th>
							<th>Category Description</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="category" items="${categoryList}" varStatus="status">

						<tr>
							<td>${category.id}</td>
							<td>${category.name}</td>
							<td>${category.description}</td>

							  <%-- <td> <a href="manage_category_delete/${category.id}"> Delete | </a>   
	   <a href="manage_category_edit/${category.id}"> Edit  </a>    </td> --%>



								<td><a href="<c:url value='/manage_category_edit/${category.id}' />">Edit</a></td>

								<td><a href="<c:url value='/manage_category_delete/${category.id}' />">Delete</a></td>
								
								

						</tr>






					</c:forEach>
					</tbody>

				</table>

			</div> 

		</div>
	</center>
</body>
</html>
















