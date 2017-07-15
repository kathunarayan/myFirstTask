<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>Mega menu with on mouse hover sub-menu - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic)
	;

body, html {
	padding:20px;
	font-family: 'Open Sans', 'sans-serif';
	height: 100%;
	background-repeat: no-repeat;
	background-image: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));
}

.mega-dropdown {
	position: static !important;
}

.mega-dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.mega-dropdown-menu>li>ul {
	padding: 0;
	margin: 1px;
}

.mega-dropdown-menu>li>ul>li {
	list-style: none;
}

.mega-dropdown-menu>li>ul>li>a {
	display: block;
	color: #222;
	padding: 3px 5px;
}

.mega-dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus
	{
	text-decoration: none;
}

.mega-dropdown-menu .dropdown-header {
	font-size: 18px;
	color: #ff3546;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}

.carousel-control {
	width: 30px;
	height: 30px;
	top: -35px;
}

.left.carousel-control {
	right: 30px;
	left: inherit;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right
	{
	font-size: 12px;
	background-color: #fff;
	line-height: 30px;
	text-shadow: none;
	color: #333;
	border: 1px solid #ddd;
}

.nav .open>a, .nav .open>a:focus, .nav  .open>a:hover {
	background-color: #fff;
	border-color: #337ab7;
}
/*Login Screen Style*/
.card-container.card {
	max-width: 350px;
	padding: 40px 40px;
}

.btn {
	font-weight: 700;
	height: 36px;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	cursor: default;
}

/*
 * Card component
 */
.card {
	background-color: #F7F7F7;
	/* just in case there no content*/
	padding: 20px 25px 30px;
	margin: 0 auto 25px;
	margin-top: 50px;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
	width: 96px;
	height: 96px;
	margin: 0 auto 10px;
	display: block;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	margin: 10px 0 0;
	min-height: 1em;
}

.reauth-email {
	display: block;
	color: #404040;
	line-height: 2;
	margin-bottom: 10px;
	font-size: 14px;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin #inputEmail, .form-signin #inputPassword {
	direction: ltr;
	height: 44px;
	font-size: 16px;
}

.form-signin input[type=email], .form-signin input[type=password],
	.form-signin input[type=text], .form-signin button {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	z-index: 1;
	position: relative;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin .form-control:focus {
	border-color: rgb(104, 145, 162);
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px;
	/* box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px ;*/
}

.btn.btn-signin {
	/*background-color: #4d90fe; */
	/* background-color: rgb(104, 145, 162);*/
	/* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
	padding: 0px;
	font-weight: 700;
	font-size: 14px;
	height: 36px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
	-o-transition: all 0.218s;
	-moz-transition: all 0.218s;
	-webkit-transition: all 0.218s;
	transition: all 0.218s;
}

.btn.btn-signin:hover, .btn.btn-signin:active, .btn.btn-signin:focus {
	background-color: rgb(97, 133, 150);
}

.forgot-password {
	color: rgb(104, 145, 162);
}

.forgot-password:hover, .forgot-password:active, .forgot-password:focus
	{
	color: rgb(12, 97, 33);
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
/*Login screen End*/
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			<ul>
  <li ><a>Profile</a></li>
  <li style="float:right;margin-left:900px;"><a href="logout">Logout</a></li>
</ul>

				
			</div>
		
		</div>
		<!-- /.container-fluid --> </nav>
		<table width=50%>
		<tr><th>Username</th>
			<td>${userDetails.userName}</td></tr>
		<tr><th>Mail id</th>
			<td>${userDetails.email }</td></tr>
		<tr><th>password</th>
			<td>${userDetails.password }</td></tr>
		<tr><th></th>
			<td><a href="editUser?userName=${userDetails.userName}" style="color:#FFF">EDIT</a></td></tr>
		</table>
	</div>
	
	
	<script type="text/javascript">
		$(document).ready(
				function() {
					$(".dropdown1").hover(
							function() {
								$('.dropdown-menu', this).not(
										'.in .dropdown-menu').stop(true, true)
										.slideDown("400");
								$(this).toggleClass('open');
							},
							function() {
								$('.dropdown-menu', this).not(
										'.in .dropdown-menu').stop(true, true)
										.slideUp("400");
								$(this).toggleClass('open');
							});
				});
	</script>
</body>
</html>

</body>
</html>