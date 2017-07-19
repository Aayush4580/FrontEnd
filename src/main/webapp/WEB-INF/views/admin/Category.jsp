<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
	 body{
    background:url('http://ontelecom.com.au/ot/wp-content/uploads/2016/06/scheduled-maintenance.png');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: -10% 110%;
} 
	</style>
</head>
<body>
<center>


<h2>  Manage Categories  </h2>

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


<div id="UpdateCategory" style="margin-left: 2px;">

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






	
	<%-- <h2> Delete / Update the Categories  </h2>
	<div id="ShowCategories">
	
		<table border="1">
		<thead>
		<tr>
		<td> Category ID</td>
		<td> Category Name</td>
		<td> Category Description </td>
		<td colspan="1">  Action  </td>
		</tr>
		</thead>
		
	<c:forEach var="category" items="${categoryList}">
	
	<tr>  
	 <td> ${category.id} </td>
	  <td> ${category.name} </td>
	   <td> ${category.description} </td>
	   
	   <td> <a href="manage_category_delete/${category.id}"> Delete | </a>   
	   <a href="manage_category_edit/${category.id}"> Edit  </a>    </td>
	   
	  
	  
	  <td><a href="<c:url value='/manage_category_edit/${category.id}' />">Edit</a></td>
					
	  <td><a href="<c:url value='/manage_category_delete/${category.id}' />">Delete</a></td>
	   
	   
	
	
	
	</tr>

	
	
	
	
	
	</c:forEach>
	
	
	</table>
	
	</div> --%>
	<h2> Delete / Update the Categories  </h2>
	<div>
	<sql:setDataSource var = "categoryList" driver = "org.h2.Driver"
         url = "jdbc:h2:~/test"
         user = "sa"  password = "sa"/>

         <sql:query dataSource = "${categoryList}" var = "category">
            SELECT * from Category;
         </sql:query>
 
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
         
         <c:forEach var = "category" items = "${category.rows}">
            <tr>
               <td> <c:out value = "${category.id}"/></td>
               <td> <c:out value = "${category.name}"/></td>
               <td> <c:out value = "${category.description}"/></td>
               
               
               
				<td><a class="btn btn-primary" href="<c:url value='/manage_category_edit/${category.id}' />">Edit</a></td>
			
				<td><a class="btn btn-danger" href="<c:url value='/manage_category_delete/${category.id}' />">Delete</a></td>
               
               
               
            </tr>
         </c:forEach>
      </table>
</div>
</div>
</center>
</body>
</html>
















