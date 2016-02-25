<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap: Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		
		<!-- Bootstrap: Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<title>Foobar Bookshop | My Profile</title>
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>
		
		<style type="text/css">
		body {
			padding-top: 5%;
			font-family: 'Raleway', sans-serif
		}
		.navbar-inverse, .dropdown-menu{
			background-color: #505050;
			background-image: none;
			border-color: #080808;
		}
		.dropdown-menu>li>a {
			color: #129793;
		}
		.navbar-inverse .navbar-nav>li>a {
			color: #9BD7D5;
		}
		.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus {
			color: #FFF5C3;
		}
		.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus {
			background-color: #505050;
			background-image: none;
		}
		.navbar-inverse .navbar-brand, .navbar-inverse .navbar-brand:hover {
			color: #A7FCDB;
			font-family: 'Carter One', cursive;
		}
		
		span#header {
			float:left;
			font-size: 2em;
			font-family: 'Kite One', sans-serif;
		}
		.breadcrumb {
			float: left;
			width: 80%;
			background-color: white;
			background-image: none;
			text-align: right;
		}
		
		.tabs-left > .nav-tabs > li {
			float: none;
		}
		.tabs-left > .nav-tabs > li > a {
			min-width: 200px;
			padding: 15%;
			margin-right: 0;
			margin-bottom: 3px;
			margin-right: -1px;
			-webkit-border-radius: 4px 0 0 4px;
			-moz-border-radius: 4px 0 0 4px;
			border-radius: 4px 0 0 4px;
		}
		.tabs-left > .nav-tabs {
			float: left;
			margin-right: 19px;
			border-right: 1px solid #ddd;
		}
		.tabs-left > .nav-tabs > li > a:hover, .tabs-left > .nav-tabs > li > a:focus {
			border-color: #eeeeee #dddddd #eeeeee #eeeeee;
		}
		.tabs-left > .nav-tabs .active > a, .tabs-left > .nav-tabs .active > a:hover, .tabs-left > .nav-tabs .active > a:focus {
			border-color: #ddd transparent #ddd #ddd;
			*border-right-color: #ffffff;
		}
		
		.acidjs-rating-stars, .acidjs-rating-stars label::before {
			display: inline-block;
		}
		 
		.acidjs-rating-stars input {
			display: none;
		}
		 
		.acidjs-rating-stars {
			unicode-bidi: bidi-override;
			direction: rtl;
		}
			 
		.acidjs-rating-stars label {
			color: #ccc;
		}
			 
		.acidjs-rating-stars label::before {
			content: "\2605";
			width: 20px;
			line-height: 18px;
			text-align: center;
			font-size: 25px;
			cursor: pointer;
		}
			 
		.acidjs-rating-stars input:checked ~ label {
			color: #f5b301;
		}
			 
		.acidjs-rating-disabled {
			-webkit-pointer-events: none;
			-moz-pointer-events: none;
			pointer-events: none;
		}
		
		h3 {
			float:left;
			width: auto;
			padding: 5px;
			margin-right: 10px;
			font-size: 100%;
			font-weight: normal;
		}
		
		img {
			width: 200px;
			height: 200px;
		}
		</style>
	</head>
	<body>
		<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
			<div class="container">
				<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="Home.jsp" class="navbar-brand">Foobar Bookshop</a>
				</div>
				<div class="collapse navbar-collapse" id="example">
					<form action="" class="navbar-form navbar-left" role="search">
						<div class="form-group has-feedback" id="searchbar">
							<input type="text" class="form-control" placeholder="Search for...">
							<button class="btn btn-default" type="submit" id="searchbtn"><i class="glyphicon glyphicon-search"></i></button>
						</div>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown"><%= session.getAttribute("username") %><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="ProfileServlet">My Profile</a></li>
								<li><a href="MessageBoxServlet">Messages</a></li>
								<li><a href="ArchiveServlet">Archive</a></li>
								<li><a href="LogoutServlet">Log Out</a></li>
							</ul>
						</li>
						<li><a href="Borrow.jsp">Borrow</a></li>
						<li><a href="Lend.jsp">Lend</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="col-lg-4">
				<img src="Images/addphoto.png" /><br>
				<h3>${user.firstname} ${user.lastname} <br>
				<div class="acidjs-rating-stars acidjs-rating-disabled">
					<form>
						<input disabled="disabled" type="radio" name="group-3" id="group-3-0" value="5" /><label for="group-3-0"></label><!--
						--><input disabled="disabled" type="radio" checked="checked" name="group-3" id="group-3-1" value="4" /><label for="group-3-1"></label><!--
						--><input disabled="disabled" type="radio" name="group-3" id="group-3-2" value="3" /><label for="group-3-2"></label><!--
						--><input disabled="disabled" type="radio" name="group-3" id="group-3-3" value="2" /><label for="group-3-3"></label><!--
						--><input disabled="disabled" type="radio" name="group-3" id="group-3-4"  value="1" /><label for="group-3-4"></label>
					</form>
				</div><br>
				${user.college} ${user.idnum}<br>
				${user.gender}<br>
				${user.email}
				</h3>
			</div>
			<div class="col-lg-8">
				<h4>Feedbacks</h4>
				<p>
					<c:forEach var="current" items="${feedbacks}" >
						<c:out value="${current.rater}"/>
						<c:out value="${current.rating}"/>
						<c:out value="${current.comment}"/><br>
				 	</c:forEach>
				</p>
			</div>			
		</div>
		
		<footer>
			<div class="container">
				<hr><p>
					&copy; 2015 Team Lego
				</p>
			</div>
		</footer>
	</body>
</html>