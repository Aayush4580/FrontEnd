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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background:
		url('http://ontelecom.com.au/ot/wp-content/uploads/2016/06/scheduled-maintenance.png');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: -10% 110%;
}
</style>
</head>
<body>
	<center>
		<div class="container">

			<h2>Manage Suplier</h2>


			<div id="CreateProduct">

				<form action="manage_supplier_add" method="get" class="form-inline" enctype="multipart/form-data">

					<!-- <label>Id</label><input type="text" name="id">  -->
					<div class="form-group">
						<label for="focusedInput">Id</label> <input class="form-control"
							id="focusedInput" type="text" name="id">
					</div>
					<!-- <label>name</label><input type="text" name="name"> -->
					<div class="form-group">
						<label for="focusedInput">Name</label> <input class="form-control"
							id="focusedInput" type="text" name="name">
					</div>
					<!-- <label>description</label><input type="text" name="description"> -->
					<div class="form-group">
						<label for="focusedInput">Address</label> <input
							class="form-control" id="focusedInput" type="text" name="address">
					</div>
					<!-- <div class="form-group">
						<label for="focusedInput">Image</label> <input
							class="form-control" id="focusedInput" type="file" name="image">
					</div> -->
					<!-- <label class="btn btn-default btn-file">Image <input type="file" style="display: none;" name="image"></label> -->

					
					<!-- <input type="submit" value="Create Product"> -->
					<button type="submit" class="btn btn-success">Add Supplier</button>
				</form>
				<!-- <form method="get" action="manage_supplier_add" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Pick file:</td>
                    <td><input type="file" name="fileUpload" size="50" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form> -->

		</div>
			
			
			<!-- ---------------- update supplier---------------------->
			
			
			<div id="UpdateSupplier" style="margin-left: 20px;">

			<form action="manage_supplier_update" method="post"
					class="form-inline">

					<%-- <input type="text" name="id"  value="${selectedCategory.id}"> --%>
					<div class="form-group">
						<label for="focusedInput">Id</label> <input class="form-control"
							id="focusedInput" type="text" name="id"
							value="${selectedSupplier.id}">
					</div>
					<%-- <input type="text" name="name" value="${selectedCategory.name}">  --%>
					<div class="form-group">
						<label for="focusedInput">Name</label> <input class="form-control"
							id="focusedInput" type="text" name="name"
							value="${selectedSupplier.name}">
					</div>
					
					<div class="form-group">
						<label for="focusedInput">Address</label> <input
							class="form-control" id="focusedInput" type="text"
							name="address" value="${selectedSupplier.address}">
					</div>
					
					<input type="submit" class="btn btn-primary"
						value="Update Supplier">
					<!-- <button type="submit" class="btn btn-primary">Update Category</button> -->
				</form>
	
</div>	

			<h2>Mannage Suppliers</h2>
			<%-- <c:if test="${!empty supplierList }">
				<div>
					<table>
						<thead>
							<tr>
								<th>Supplier Id</th>
								<th>Supplier Name</th>
								<th>Supplier Address</th>
							</tr>

						</thead>
						<c:forEach var="supplier" items="${supplierList}">
							<tr>
								<td>${supplier.id }</td>
								<td>${supplier.name }</td>
								<td>${supplier.address }</td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</c:if> --%>
			
			
<!-- -------------Show Categories--------------- -->
			
<div>
	<sql:setDataSource var = "supplierList" driver = "org.h2.Driver"
         url = "jdbc:h2:~/test"
         user = "sa"  password = "sa"/>

         <sql:query dataSource = "${supplierList}" var = "supplier">
            SELECT * from Supplier;
         </sql:query>
 
      <div class="container" id="ShowCategories">

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Supplier ID</th>
							<th>Supplier Name</th>
							<th>Supplier Address</th>
							<!-- <th> Image</th> -->
							<th colspan="2">Action</th>
							<!-- <th colspan="2">Action</th> -->
						</tr>
					</thead>
         
         <c:forEach var = "supplier" items = "${supplier.rows}">
            <tr>
               <td> <c:out value = "${supplier.id}"/></td>
               <td> <c:out value = "${supplier.name}"/></td>
               <td> <c:out value = "${supplier.address}"/></td>
               <%-- <td> <c:out value = "${supplier.image}"/></td> --%>
               
               <td><a class="btn btn-primary" href="<c:url value='/manage_supplier_edit/${supplier.id}' />">Edit</a></td>
               <!-- add or remove is not written -->
				
			
				<td><a class="btn btn-danger" href="<c:url value='/manage_supplier_delete/${supplier.id}' />">Delete</a></td>
               
               
               
            </tr>
         </c:forEach>
      </table>
	</div>
	</div>


</div>
</center>
</body>
</html>