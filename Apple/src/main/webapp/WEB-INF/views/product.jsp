<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Shopping</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
.navbar {
	margin-bottom: 0;
	background-color: #20B2AA;
	z-index: 9999;
	border: 0;
	font-size: 18px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 2px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: Black !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #20B2AA !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">

	<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"> <span
						class="glyphicon glyphicon-apple"></span>Shopping Site</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="Home"><span
						class="glyphicon glyphicon-home"></span>Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> Catagory <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="product">Desktop</a></li>
						<li><a href="product">Laptop</a></li>
						<li><a href="product">Iphone</a></li>
						<li><a href="product">Ipad</a></li>
						<li><a href="product">Ipod</a></li>
						<li><a href="product">Accessories</a></li>
					</ul></li>
				<li><a href="feedback"><span
						class="glyphicon glyphicon-pencil"></span>FeedBack</a></li>
				<li><a href="#about"><span
						class="glyphicon glyphicon-stats"></span>About Us</a></li>
				<li><a href="#contactus"><span
						class="glyphicon glyphicon-earphone"></span>Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li><a href="cart"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="reg"><span class="glyphicon glyphicon-user"></span>Sign
						Up</a></li>
			</ul>
				</div>
	</nav>
	


</body>
</html>