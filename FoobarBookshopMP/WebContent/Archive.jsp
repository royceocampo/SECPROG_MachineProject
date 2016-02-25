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
		
		<title>Borrow Something | Archive</title>
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
			font-size: 2em;
			line-height: 2em;
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
		.thumbnail {
			min-height: 400px;
		}
		a>.thumbnail>img {
			width: auto;
			height: 200px;
		}
		
		a:hover {
			text-decoration: none;
		}
		
		div.container ul div.categories{
			width:100%;
			height:8%;
			line-height: 250%;
			background-color: red;
		}
		</style>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		
		<script>
		$(document).ready(function(){
			$("li#item a").click(function(){
				console.log($(this).attr("id"));
				$.ajax({
					url : "getDetails",
					data : {"id": $(this).attr("id")},
					method : "POST",
					success : function(data){
						$("div #itemdiv p, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");

						$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type);
						//if(data.type == "book")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Title: " + data.title+ "<br>Year: " + data.year);
						//if(data.type == "calculator")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Brand: " + data.brand);
						//if(data.type == "notebook")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Subject: " + data.subject+ "<br>Professor: " + data.professor);
						//if(data.type == "other")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Brand: " + data.brand+ "<br>Description: " + data.desc);
						//if(data.type == "supplies")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Brand: " + data.brand);
						//if(data.type == "umbrella")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Color: " + data.color);
						//if(data.type == "usb")
						//	$("div #itemdiv").append("<p> Owner: " + data.owner + "<br>Availability: " + data.availability + "<br>Type: " + data.type+ "<br>Brand: " + data.brand + "<br>Capacity: " + data.usbSize);
					
					}
				});
			});
		});
			
	</script>
		
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
					<a href="Home.jsp" class="navbar-brand">Borrow Something</a>
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
			<ul class="nav nav-pills nav-stacked col-md-4">
				<span id="header">Archive : Lent Items</span>
				<c:forEach var="current" items="${items}" >
					<li id="item"><a href="#itemdiv" id=<c:out value="${current.id}"/> data-toggle="pill"> <c:out value="${current.itemName}"/> </a></li>
			 	</c:forEach>
			</ul>
			<div class="tab-content col-md-8">
				<div class="tab-pane" id="itemdiv">
					<span id="header"></span><br>
				</div>
			</div>
		</div>
	  
		<footer>
			<div class="container">
				<hr><p>&copy; 2015 Team Lego</p>
			</div>
		</footer>
		
	</body>
</html>