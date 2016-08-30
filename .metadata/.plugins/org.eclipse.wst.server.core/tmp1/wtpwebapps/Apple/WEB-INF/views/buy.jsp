<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Purchase</title>
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
h1 {
	font-size: 24px;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
	font-size: 24px;
}

.navbar {
	background-color: #660033;
	font-size: 18px !important;
}

.navbar .navbar-brand {
	color: #FFFFFF !important;
}

.navbar .li a {
	color: #FFF !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #660033 !important;
	background-color: #FFCCCC !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #FFCCCC !important;
}

footer .glyphicon {
	font-size: 24px;
	margin-bottom: 20px;
	color: #660033;
}

@media screen and (max-width: 768px) {
	.col-lg-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}
</style>

</head>
<body>
	<%@include file="Header.jsp"%>
	<center>
		<font face="Harlow Solid Italic"><h1>Card Details</h1></font>
		<div class="container">
			<form:form action="buy" method="post" commandName="buy"
				class="form-horizontal" role="form">
				<div class="form-group">
					<form:label class="col-lg-4 control-label" path="no">
						<spring:message text="Card No" />
					</form:label>
					<div class="col-lg-4 ">
						<form:input type="number" path="no" class="form-control"
							placeholder="Enter card no" required="true"
							title="should not be empty" />
					</div>
				</div>
				<br>
				<br>
				<div class="form-group">
					<form:label class="col-lg-4 control-label" path="my">
						<spring:message text="Month and Year" />
					</form:label>
					<div class="col-lg-4 ">
						<form:input type="number" path="my" class="form-control"
							placeholder="Enter month and year" required="true"
							title="should not be empty" />
					</div>
				</div>
				<br>
				<br>
				<div class="form-group">
					<form:label class="col-lg-4 control-label" path="name">
						<spring:message text="Name" />
					</form:label>
					<div class="col-lg-4 ">
						<form:input path="name" class="form-control"
							placeholder="Enter name" required="true"
							title="should not be empty" />
					</div>
				</div>
				<div class="form-group">
					<br> <br>
					<form:label class="col-lg-4 control-label" path="cvv">
						<spring:message text="CVV" />
					</form:label>
					<div class="col-lg-4 ">
						<form:input type="number" path="cvv" class="form-control"
							placeholder="Enter cvv" required="true"
							title="should not be empty" />
					</div>
				</div>
				<br>
				<br>
				<div>
					<a href="proceded"><form:button type="submit"
							class="btn btn-success">
							<spring:message text="Proceed" />
						</form:button></a>
					<form:button type="reset" class="btn btn-info">
						<spring:message text="Reset" />
					</form:button>
				</div>
			</form:form>
		</div>
	</center>
</body>
</html>
