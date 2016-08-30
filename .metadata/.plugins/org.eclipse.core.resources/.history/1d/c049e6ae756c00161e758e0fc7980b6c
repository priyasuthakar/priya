<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>My Shopping</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- <link href="http://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
	font: 400 15px Helvetica, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h1 {
	font-size: 24px;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
	font-size: 24px;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.bg-grey {
	background-color: #FFCCCC;
	color: black;
	font-family: Montserrat, sans-serif;
}

.logo {
	color: #660033;
	font-size: 200px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #660033;
}

.carousel-indicators li {
	border-color: #660033;
}

.carousel-indicators li.active {
	background-color: #660033;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 250%;
	margin: auto;
}

.tales {
	width: 200%;
}

.carousel-inner {
	max-height: 600px !important;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.container-fluid {
	padding: 20px 50px;
}

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
	margin-bottom: 20px;
	color: #660033;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@media screen and (max-width: 768px) {
	.col-sm-4 {
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

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<%@include file="Header.jsp"%>
	<!-- Container (About Section) -->
	<div id="about" class="container-fluid">
		<div class="row">
			<div class="col-sm-8">
				<h2>About Us</h2>
				<br>
				<h4>
					<p>This Website exclusively contains for purchasing apple
						product.</p>
				</h4>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-stats logo"></span>
			</div>
		</div>
	</div>

	<div class="container-fluid ">
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-globe logo slideanim"></span>
			</div>
			<div class="col-sm-8">
				<h2>Our Values</h2>
				<h4>
					<strong>MISSION:</strong> To deliver an exceptional shopping
					experience by offering the best service, value, quality, and
					freshest products while being good stewards of our environment and
					giving back to the communities we serve.
				</h4>
				<h4>
					<strong>VISION:</strong>Become the #1 supermarket in our
					communities by offering the most inviting buying environment in the
					industry while saving our customer time and money and building our
					brand to premier status.
				</h4>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(
				function() {
					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {
								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {
									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});
				})
	</script>
	<%@include file="Footer.jsp"%>
</body>
</html>