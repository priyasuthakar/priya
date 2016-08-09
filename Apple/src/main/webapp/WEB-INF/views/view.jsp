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

</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"> Shopping Site</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home">Home</a></li>
			<li><a href="catagoryadmin">Catagory</a></li>
			<li><a href="supplieradmin">Supplier</a></li>
			<li><a href="productadmin">Product</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
		</ul>
	</div>
	</nav>

	<h3>Category List</h3>
	<!--  
 <c:if test="${!empty categoryList }">-->
		<table class="tg">
			<tr>
				<th width="120">CATAGORYID</th>
				<th width="120">CATAGORYNAME</th>
				<th width="120">CATAGORYDISCRIPTION</th>
				<th width="120">EDIT</th>
				<th width="120">DELETE</th>
			</tr>
		 	<c:forEach items="${catagoryList}" var="catagory">
				<tr>
					<td>${catagory.id}</td>
					<td>${catagory.name}</td>
					<td>${catagory.discription}</td>
					<td><a href="<c:url value='catagory/edit/${catagory.id}'/>">Edit</a></td>
					<td><a href="<c:url value='catagory/remove/${catagory.id}'/>">Edit</a></td>
				</tr>
			</c:forEach> 
		</table>
	</c:if>
	
</body>
</html>