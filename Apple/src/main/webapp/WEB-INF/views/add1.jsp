<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="/WEB-INF/views/AdminHeader.jsp"%>
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
<body>
	<center>
		<font face="Harlow Solid Italic"><h3>${addsupplier}</h3></font>
		<div class="container">
			<form:form action="add1" method="post" commandName="supplier"
				class="form-horizontal" role="form">
				<div class="control-group">
					<form:label class="col-lg-4" path="id">
						<spring:message text="Id" />
					</form:label>
					<div class="col-lg-4 controls">
						<form:input path="id" />
					</div>
				</div>
				</br>
				</br>
				<div class="control-group">
					<form:label class="col-lg-4" path="name">
						<spring:message text="Name" />
					</form:label>
					<div class="col-lg-4 controls">
						<form:input path="name" />
					</div>
				</div>
				</br>
				</br>
				<div class="control-group">
					<form:label class="col-lg-4" path="discription">
						<spring:message text="Discription" />
					</form:label>
					<div class="col-lg-4 controls">
						<form:input path="discription" />
					</div>
				</div>
				</br>
				</br>
				<%-- <form:button type="submit" class="btn btn-info">
					<spring:message text="ADD" />
				</form:button> --%>
				<c:if test="${! empty supplier.name}">
					<form:button type="submit" class="btn btn-info">
						<spring:message text="EditSupplier" />
					</form:button>
				</c:if>
				<c:if test="${empty supplier.name}">
					<form:button type="reset" class="btn btn-info">
						<spring:message text="AddSupplier" />
					</form:button>
				</c:if>
				<!-- <a href="add1" class="btn btn-info" role="button">Reset</a> -->
			</form:form>
		</div>
	</center>

	<!-- 
	<center>
		<div class="container">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-4 control-label">Supplier Id</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text"
							placeholder="Enter product id" required="true"
							title="should not be empty">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Supplier Name</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" id="text"
							placeholder="Enter product name" required="true"
							title="should not be empty">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">Description:</label>
					<div class="col-sm-4">
						<textarea class="form-control" rows="5" id="description"></textarea>
					</div>
				</div>
			</form>
			<button type="add1" class="btn btn-default .btn-sm">Add</button>
			<a href="add11" class="btn btn-info" role="button">Reset</a> </br>
		</div>
	</center> -->
</body>
</html>