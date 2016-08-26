<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty username}">
			<font face="Harlow Solid Italic"><h1>Welcome Guest...!!!</h1></font>
		</c:when>
		<c:when test="${not empty username}">
			<font face="Harlow Solid Italic"><h1>${username}</h1></font>
		</c:when>
	</c:choose>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> <font face="Script MT Bold">Shopping
					Site</font></a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="admin">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> Catagory <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="catagory">Add Catagory</a></li>
					<li><a href="viewcatagory">View Catagory</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> Supplier<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="supplier">Add Supplier</a></li>
					<li><a href="viewsupplier">View Supplier</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> Product <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="product">Add Product</a></li>
					<li><a href="viewproduct">View Product</a></li>
				</ul></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<c:choose>
				<c:when test="${empty username}">
					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="reg"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
				</c:when>
				<c:when test="${not empty username}">
					<li><a href="logout"><span
							class="glyphicon glyphicon-user"></span> Logout</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
	</nav>
</body>
</html>