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
</head>
<body>
<div class="col-sm-3 sidenav">

					<img class="img-responsive" id="zoom_01"
						src="resources/images/small/iphone7.png" width="250"
						data-zoom-image="resources/images/large/S8 large.jpg" width="300" />

				</div>
				





				<div class="col-sm-9">
					<h1>
						<small>Iphone 7 (Mat-Black, 64 GB) (4 GB RAM)</small>
					</h1>
					<h5>
						<span class="label label-success">4.5 &#9734;</span>
					</h5>
					<hr>
				</div>
				<br><br>
				
				<!-- display the details from database -->
				
				
	
         <h3>
			<small>IPHONE 7</small>
		 </h3>
		 <sql:setDataSource var = "productList" driver = "org.h2.Driver"
         url = "jdbc:h2:~/test"
         user = "sa"  password = "sa"/>

         <sql:query dataSource = "${productList}" var = "product">
            SELECT id,description,price from Product where id='001';
         </sql:query>
 <form method="post" action="myCart">
      <div class="container" id="ShowProducts">

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Product Id</th>
							<th>Product Description</th>
							<th>Product Price</th>
							
						</tr>
					</thead>
         
         <c:forEach var = "product" items = "${product.rows}">
            <tr>
               <td><input type="text" id="productId" name="id" value = "${product.id}" >
                <!--<c:out value = "${product.id}"/>--></td>
               <td><input type="text" id="productId" name="description" value = "${product.description}" ><%--  <c:out value = "${product.description}"/> --%></td>
               <td><input type="text" id="productId" name="price" value = "${product.price}" > <%-- <c:out value = "${product.price}"/> --%></td> 
               
               <td>
               		
 						<button type="submit" class="btn btn-success"><i class="fa fa-cart"></i>Add To Cart</button>
 					
               </td>
               
               <%-- <td><a class="btn btn-primary" href="<c:url value='/myCart' />">Add To Cart</a></td> --%>
            </tr>
         </c:forEach>
      </table>

				
		
							
				
			</div>
			</form>
				<script>
					$('#zoom_01').elevateZoom({

						cursor : "crosshair",
					/* zoomWindowFadeIn: 500,
					 zoomWindowFadeOut: 750 */
					});
				</script>
</body>
</html>