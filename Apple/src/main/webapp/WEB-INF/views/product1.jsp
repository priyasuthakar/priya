<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!--Angularjs library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
.navbar {
	background-color: #660033;
	font-size: 16px !important;
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
	color: #660033;
}

table, th, td, tr {
	border: 2px solid grey;
	border-collapse: collapse;
	padding-left: 50%
}
</style>
</head>
<body ng-app="productapp" ng-controller="productCtrl">
	<br>
	<br>
	<br>
	<div align="center">
		<label>Search:</label><input type="text" ng-model="searchbox"><span
			class="glypicon glypicon-search"></span> <br> <br> <font
			face="Harlow Solid Italic"><h1>List</h1></font>
		<table class="table table-striped">
			<thead>
				<tr>
					<th width="120">NAME</th>
					<th width="120">COLOR</th>
					<th width="120">PRICE</th>
					<th width="120">DISCRIPTION</th>
					<th width="120">INFO</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="plist in product | filter:searchbox ">
					<td>{{plist.name}}</td>
					<td>{{plist.color}}</td>
					<td>{{plist.price}}</td>
					<td>{{plist.discription}}</td>
					<td><a href="productinfo?pdid={{plist.id}}">i</a></td>
				</tr>
			</tbody>
		</table>
		<script type="text/javascript">
		var p = ${listp};
		var productapp = angular.module("productapp", []);
		productapp.controller("productCtrl", function($scope, $http) {
			$scope.product = p;
		});
	</script>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="Footer.jsp"%>
</body>
</html>