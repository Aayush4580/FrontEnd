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
<div class="container">

<h2>  Add Products  </h2>


<div id="CreateProduct">

	<form action="manage_product_add" method="get" class="form-inline">

		<!-- <label>Id</label><input type="text" name="id">  -->
		<div class="form-group">
						<label for="focusedInput">Id</label> <input class="form-control"
							id="focusedInput" type="text" name="id">
		</div>
		<!-- <label>name</label><input type="text" name="name"> -->
		<div class="form-group">
						<label for="focusedInput">Name</label> <input class="form-control"
							id="focusedInput" type="text" name="name">
		</div><br>
		<!-- <label>description</label><input type="text" name="description"> -->
		<div class="form-group"style="margin-right: 8px;">
						<label for="focusedInput">Description</label> <input class="form-control"
							id="focusedInput" type="text" name="description">
		</div>
		<!-- <label>price</label><input type="text" name="price"> -->
		<div class="form-group"style="margin-right: 65px;">
						<label for="focusedInput">Price</label> <input class="form-control"
							id="focusedInput" type="text" name="price">
		</div><br>
		<!-- <label>Category_id</label><input type="text" name="Category_id"> -->
		<!-- <div class="form-group">
						<label for="focusedInput">Category_id</label> <input class="form-control"
							id="focusedInput" type="text" name="Category_id">
		</div> -->
		<!-- <label>Supplier_id</label><input type="text" name="Supplier_id"> -->
		<!-- <div class="form-group">
						<label for="focusedInput">Supplier_id</label> <input class="form-control"
							id="focusedInput" type="text" name="Supplier_id">
		</div>  -->
		<lebel>Supplier name</lebel>
	<select class="form-control" style="width:200px;margin-right: 65px;">
	<option value="-1">Select Supplier</option>
	<%
	try
	{
		String Query="select * from supplier";
		Class.forName("org.h2.Driver").newInstance();
		Connection conn=DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(Query);
		while(rs.next())
		{
			%>
			<option value="<%=rs.getString("id")%>"><%=rs.getString("name")%></option>
			<%
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.println("Error:"+e.getMessage());
	}
	
	%>
	</select>
	<br>
	<lebel>Category name</lebel>
	<select class="form-control" style="width:200px;margin-right: 70px;">
	<option value="-1">Select Category</option>
	<%
	try
	{
		String Query="select * from category";
		Class.forName("org.h2.Driver").newInstance();
		Connection conn=DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(Query);
		while(rs.next())
		{
			%>
			<option value="<%=rs.getString("id")%>"><%=rs.getString("name")%></option>
			<%
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.println("Error:"+e.getMessage());
	}
	
	%>
	
	
	
	</select>
		<br>
		
		 <!-- <input type="submit" value="Create Product"> -->
		 <button type="submit" class="btn btn-success">Add Product</button>
	</form>
	
</div>	






</div>
</center>
</body>
</html>