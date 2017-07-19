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
  <title>Shoping cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="resources/css/main.css">

        <script src="resources/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<style type="text/css">

</style>
</head>

<body>

	<center>
		<h2>Welcome to Shopping Cart</h2>
	</center>
	${message}
<<<<<<< HEAD
	<div class="mainmenu-wrapper">
	
<div class="menuextras">
					<div class="extras">
						<ul>
							<li class="shopping-cart-items"><i class="glyphicon glyphicon-shopping-cart icon-white"></i> <a href="viewCart"><b>My Cart</b></a></li>
							<li>
								<div class="dropdown choose-country">
									<a class="#" data-toggle="dropdown" href="#"><img src="resources/img/flags/in.png" alt="India"> INDIA</a>
									<!-- <ul class="dropdown-menu" role="menu">
										<li role="menuitem"><a href="#"><img src="resources/img/flags/us.png" alt="United States"> US</a></li>
										<li role="menuitem"><a href="#"><img src="resources/img/flags/de.png" alt="Germany"> DE</a></li>
										<li role="menuitem"><a href="#"><img src="resources/img/flags/es.png" alt="Spain"> ES</a></li>
									</ul> -->
								</div>
							</li>
			        		
			        	</ul>
					</div>
		        </div>
		        </div>
		       
=======
	

>>>>>>> origin/master
	<jsp:include page="navbar.jsp"></jsp:include>


	<!-- Homepage Slider -->
        <div class="homepage-slider">
        	<div id="sequence">
				<ul class="sequence-canvas">
					<!-- Slide 1 -->
					<li class="bg4">
						<!-- Slide Title -->
						<h2 class="title">Smart Devices</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Get smart devices at an affordable price range</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="resources/img/homepage-slider/slide1.png" alt="Slide 1" />
					</li>
					<!-- End Slide 1 -->
					<!-- Slide 2 -->
					<li class="bg3">
						<!-- Slide Title -->
						<h2 class="title">Latest Fashion</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Get 40-60% off on Womans Fashion</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="resources/img/homepage-slider/Fashion.png" alt="Slide 2" margin-left:70px;/>
						
					</li>
					<!-- End Slide 2 -->
					<!-- Slide 3 -->
					<li class="bg1">
						<!-- Slide Title -->
						<h2 class="title">Feature Rich</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Huge amount of components and over 30 sample pages!</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="resources/img/homepage-slider/slide3.png" alt="Slide 3" />
					</li>
					<!-- End Slide 3 -->
				</ul>
				<div class="sequence-pagination-wrapper">
					<ul class="sequence-pagination">
						<li>1</li>
						<li>2</li>
						<li>3</li>
					</ul>
				</div>
			</div>
        </div>
        <!-- End Homepage Slider -->
        
        
        
        <!-------------------Functions------------------ -->
	
	<c:if test="${isAdmin=='true'}">

		<jsp:include page="admin/AdminHome.jsp"></jsp:include>

	</c:if>
	<c:if test="${isUser=='true'}">

		<jsp:include page="productpage.jsp"></jsp:include>

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
	
	
	<!-------------------End of Slider --------------------------->
	
	
	<%-- <jsp:include page="link.jsp"/> --%>
	
	
	
	
	
	
	
	<!-- Footer -->
	    <div class="footer">
		<hr style="border-top: dotted 1px;" />
		<div class="row">
			<div class="col-xs-6 col-md-4" style="left:200px;"><span class="glyphicon glyphicon-remove-sign"></span>  Cancel Your Order</div>
			<div class="col-xs-6 col-md-4"style="left:200px;"> <span class="glyphicon glyphicon-refresh"></span>  Free and Easy Returns</div>
			<div class="col-xs-6 col-md-4" style="left:200px;"><span class="glyphicon glyphicon-map-marker"></span>  Track Your Order</div>
    
		</div>
		<hr style="border-top: dotted 1px;" />
		<br>
	    	<div class="container-fluid">
		    	<div class="row">
		    		<div class="col-footer col-md-3 col-xs-6">
		    			<h3>Experience ShoppingCart on Mobile</h3>
		    			<a href="page-portfolio-item.html"><img src="resources/img/googleplay.png" alt="Project Name" height="50" width="100"></a>
						<a href="page-portfolio-item.html"><img src="resources/img/appstore.png" alt="Project Name" height="35" width="90"></a>
						<a href="page-portfolio-item.html"><img src="resources/img/windowsstore.png" alt="Project Name" height="45" width="100" ></a>
						<p>keep in touch</P>
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a style="padding:15px;"href="#"><i class="fa fa-instagram"></i></a>
						<a  href="#"><i class="fa fa-twitter"></i></a>
						<a style="padding:15px;" href="#"><i class="fa fa-youtube"></i></a>
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
	        				<b>Address:</b> 123 Fake Street, LN1 2ST, London, United Kingdom<br/>
	        				<b>Phone:</b> +44 123 654321<br/>
	        				<b>Fax:</b> +44 123 654321<br/>
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
		    			<div class="footer-copyright">&copy; 2013 mPurpose. All rights reserved.</div>
		    		</div>
		    	</div>
		    </div>
	    </div>
	 <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="resources/js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="resources/js/jquery.fitvids.js"></script>
        <script src="resources/js/jquery.sequence-min.js"></script>
        <script src="resources/js/jquery.bxslider.js"></script>
        <script src="resources/js/main-menu.js"></script>
        <script src="resources/js/template.js"></script>

</body>

</html>