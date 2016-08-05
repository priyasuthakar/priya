<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Regestration Page</title>
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
	

	<center>
		<h1>
			<i> Registration </i>
		</h1>

		<div class="container">
		<form:form action="user/register" method="post" commandName="user" class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-4 control-label">First Name</label>
					<div class="col-sm-4">
						<input class="form-control" id="text"
							placeholder="Enter first name" required="true"
							title="should not be empty"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Last Name</label>
					<div class="col-sm-4">
						<input class="form-control" id="text"
							placeholder="Enter last name" required="true"
							title="should not be empty"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label"> Age</label>
					<div class="col-sm-4">
						<input class="form-control" type="Number" min="18"
							id="Number" placeholder="Enter age" required />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Gender</label></br>
					<div class="col-sm-4">
						<label><input type="radio" name="optradio">Male</label> <label><input
							type="radio" name="optradio">Female</label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Mobile No</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" pattern="[789][0-9]{9}"
							id="text" placeholder="Enter mobile no" required="true"
							title="should be in the form of 10 digit starting with 789!" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">E-Mail Id</label>
					<div class="col-sm-4">
						<input class="form-control" type="email" id="email"
							placeholder="Enter email" required="true"
							title="should be in the form of abc@example.com"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Address:</label>
					<div class="col-sm-4">
						<textarea class="form-control" rows="5" max="100" id="address" required></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">State:</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text"
							placeholder="Enter " required/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Country:</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text"
							placeholder="Enter " required/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Pincode:</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text"
							placeholder="Enter " required="true" title="should not be empty"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">User Name</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text"
							placeholder="Enter user name" required="true"
							title="should not be empty"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Password</label>
					<div class="col-sm-4">
						<input class="form-control" type="password" id="pwd"
							placeholder="Enter password" required="true"
							title="should not be empty"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Re-Password </label>
					<div class="col-sm-4">
						<input class="form-control" type="password" id="pwd"
							placeholder="Re-Enter password" required="true"
							title="should be same as password"/>
					</div>
				</div>
			</form:form>
			<a href="#" class="btn btn-info" role="button">Submit</a> <a
				href="reg" class="btn btn-info" role="button">Reset</a>
		</div>
	</center>
</body>
</html>