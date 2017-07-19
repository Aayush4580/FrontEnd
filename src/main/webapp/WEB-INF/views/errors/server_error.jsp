<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
 body{
background-image: url("http://www.esolution-pt.com/assets/images/404-page-not-found.jpg");
background-repeat: no-repeat;
background-attachment: fixed;
    background-position: 50% 0%;
} 
.error-page {padding: 40px 15px;text-align: center;}
.error-actions {margin-top:15px;margin-bottom:15px;}
.error-actions .btn { margin-right:10px; }
h1.404error {    font-size :100px !important; }
</style>
</head>
<body>
<div class="error-page">
    <!-- <h2>Oops!</h2>
    <h1 class="404error"> 404 </h1>
    <h2>Not Found</h2> -->
    <div style="margin-top: 22%;">
    <div class="error-details">
        Sorry, an error has occured. Requested page not found!
    </div>
    
    <form class="form-inline">
    <div class="form-group">
        <label for="search">Search</label>
        <input type="text" class="form-control" id="search" placeholder="Search something else...">
    </div>
    <button type="submit" class="btn btn-primary btn-large">Search</button>
    </form>
    
    
    <div class="error-actions">
        <a href="Home" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
            Take Me Home </a>
        <a href="{{url('/contact-us')}}" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> Contact Support </a>
    </div>
    </div>
</div>

</body>
</html>