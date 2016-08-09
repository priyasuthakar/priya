<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ page session="false"%> --%>
<%@page isELIgnored="false"%>
<%@include file="/WEB-INF/views/Header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index Page</title>
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

footer .glyphicon {
	font-size: 24px;
	margin-bottom: 20px;
	color: #20B2AA;
}

</style>

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	
<h4>${errorMessage}</h4>

	<center>
	
		<h1>
			<i> Sign-in </i>
		</h1>
		</br> </br> </br> </br> </br> </br>
		<div class="container">
			<form action="login" method="post" id="login">
			<div class="control-group">
				<label class="col-lg-4 control-label">User Name</label>
				<div class="controls col-lg-4">
					<input type="text" id="username" placeholder="Enter user name"
						required="true" title="should not be empty" />
				</div>
			</div>
			</br>
			</br>
			<div class="control-group">
				<label class="col-lg-4 control-label">Password</label>
				<div class="controls col-lg-4">
					<input type="pwd" id="password" placeholder="Enter password"
						required="true" title="should not be empty" />
				</div>
			</div>
			</br>
			</br>
			<div class="checkbox">
				<label><input type="checkbox"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button> <a
				href="login" class="btn btn-default" role="button">Reset</a> </br>
</form>
		</div>
	</center>
</body>
</html>





