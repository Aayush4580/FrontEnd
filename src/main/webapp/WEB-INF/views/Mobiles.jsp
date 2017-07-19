<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Shoping cart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/icomoon-social.css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/leaflet.css" />
<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
<!-- <link rel="stylesheet" href="resources/css/main.css"> -->

<script src="resources/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<link rel="stylesheet" href="resources/css/main.css">

<!-- this is for elevated zoom of the product -->
<script src='resources/js/jquery-1.8.3.min.js'></script>
<script src='resources/js/jquery.elevatezoom.js'></script>


<style type="text/css">
.row.content {
	height: 1500px
}
</style>
</head>
<body>
<<<<<<< HEAD
<div><jsp:include page="navbar.jsp"></jsp:include></div>
=======
>>>>>>> origin/master
	<div>
		<div class="container-fluid">
			<div class="row content">
				<div class="col-sm-3 sidenav">

					<img class="img-responsive" id="zoom_01"
						src="resources/images/small/s8 small.png" width="500"
						data-zoom-image="resources/images/large/S8 large.jpg" width="300" />

				</div>
				





				<div class="col-sm-9">
					<h1>
						<small>SAMSUNG Galaxy S8 (Black, 64 GB) (4 GB RAM)</small>
					</h1>
					<h5>
						<span class="label label-success">4.8 &#9734;</span>
					</h5>
					<hr>
				</div>
				<br><br>
				
				<!-- display the details from database -->
				
				
	
         <h3>
			<small>SAMSUNG </small>
		 </h3>
				
				<sql:setDataSource var = "productList" driver = "org.h2.Driver"
         url = "jdbc:h2:~/test"
         user = "sa"  password = "sa"/>

         <sql:query dataSource = "${productList}" var = "product">
            SELECT id,description,price from Product where id='002';
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
               
<<<<<<< HEAD
               <%-- <td><a class="btn btn-primary" href="<c:url value='/myCart' />">Add To Cart</a></td> --%>
=======
               
>>>>>>> origin/master
            </tr>
         </c:forEach>
      </table>

				
<<<<<<< HEAD
		
							
				
			</div>
			</form>
			<jsp:include page="Mobiles2.jsp"></jsp:include>
			<jsp:include page="Mobiles3.jsp"></jsp:include>
			<jsp:include page="Mobiles4.jsp"></jsp:include>
			<jsp:include page="Mobiles5.jsp"></jsp:include>
		</div>
	</div>
	</div>
	<br><br><br><br>
=======
		</form>		
				
				
				
				
				
			</div>
		</div>
	</div>
	</div>
	
>>>>>>> origin/master










	<!--------------------- Footer--------------------- -->
	<div class="footer">
		<hr style="border-top: dotted 1px;" />
		<div class="row">
			<div class="col-xs-6 col-md-4" style="left: 200px;">
				<span class="glyphicon glyphicon-remove-sign"></span> Cancel Your
				Order
			</div>
			<div class="col-xs-6 col-md-4" style="left: 200px;">
				<span class="glyphicon glyphicon-refresh"></span> Free and Easy
				Returns
			</div>
			<div class="col-xs-6 col-md-4" style="left: 200px;">
				<span class="glyphicon glyphicon-map-marker"></span> Track Your
				Order
			</div>

		</div>
		<hr style="border-top: dotted 1px;" />
		<br>
		<div class="container-fluid">
			<div class="row">
				<div class="col-footer col-md-3 col-xs-6">
					<h3>Experience ShoppingCart on Mobile</h3>
					<a href="page-portfolio-item.html"><img
						src="resources/img/googleplay.png" alt="Project Name" height="50"
						width="100"></a> <a href="page-portfolio-item.html"><img
						src="resources/img/appstore.png" alt="Project Name" height="35"
						width="90"></a> <a href="page-portfolio-item.html"><img
						src="resources/img/windowsstore.png" alt="Project Name"
						height="45" width="100"></a>
					<p>keep in touch</P>
					<a href="#"><i class="fa fa-facebook"></i></a> <a
						style="padding: 15px;" href="#"><i class="fa fa-instagram"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a> <a
						style="padding: 15px;" href="#"><i class="fa fa-youtube"></i></a>
				</div>
				<div class="col-footer col-md-3 col-xs-6">
					<h3>Navigate</h3>
					<ul class="no-list-style footer-navigate-section">
						<li><a href="page-blog-posts.html">Blog</a></li>
						<li><a href="page-portfolio-3-columns-2.html">Portfolio</a></li>
						<li><a href="page-products-3-columns.html">eShop</a></li>
						<li><a href="page-services-3-columns.html">Services</a></li>
						<li><a href="page-pricing.html">Pricing</a></li>
						<li><a href="page-pricing.html">Gift Cards</a></li>
						<li><a href="page-faq.html">FAQ</a></li>
					</ul>
				</div>

				<div class="col-footer col-md-4 col-xs-6">
					<h3>Contacts</h3>
					<p class="contact-us-details">
						<b>Address:</b> 123 Fake Street, LN1 2ST, London, United Kingdom<br />
						<b>Phone:</b> +44 123 654321<br /> <b>Fax:</b> +44 123 654321<br />
						<b>Email:</b> <a href="mailto:shopping_cart@gmail.com">shopping_cart@gmail.com</a>
					</p>
				</div>
				<div class="col-footer col-md-2 col-xs-6">
					<h3>Stay Connected</h3>
					<ul class="footer-stay-connected no-list-style">
						<li><a href="#" class="facebook"></a></li>
						<li><a href="#" class="twitter"></a></li>
						<li><a href="#" class="googleplus"></a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="footer-copyright">&copy; 2013 mPurpose. All
						rights reserved.</div>
				</div>
			</div>
		</div>
	</div>



	<script>
					$('#zoom_01').elevateZoom({

						cursor : "crosshair",
					/* zoomWindowFadeIn: 500,
					 zoomWindowFadeOut: 750 */
					});
				</script>
				
				
</body>
</html>