<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- Bootstrap: Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		
		<!-- Bootstrap: Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

		<title>Foobar Bookshop | Borrow</title>
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		
		<style>
		body {
			padding-top: 3.8%;
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
		
		div.ownerdiv div#details img {
			float: right;
			margin-top: 0px;
			margin-right: 0px;
			width: 40%;
			height: 50%;
		}
		div.ownerdiv div#details h4 {
			margin-top: 10px;
			margin-left: 3%;
		}
		div.ownerdiv div#details p {
			margin-left: 7%;
		}
		div.ownerdiv div#details button {
			position: relative;
			margin-left: 70%;
			margin-top: 30%;
			text-align: center;
			padding: 10px 10px 10px 10px;
		}
		
		#pagepic {
			background-image: url("Images/borrow.jpg");
			background-repeat: none;
			background-position: center;
			background-size: cover;
			padding: 120px;
			margin-top: 0px;
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
			$("li#books a.bks").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "book"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			$("li#calcus a.cal").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "calculator"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			$("li#nbks a.nbk").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "notebook"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			$("li#ssss a.sss").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "supplies"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			$("li#umbs a.umb").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "umbrella"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			$("li#usbs a.usb").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "usb"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			$("li#oths a.oth").click(function(){
				$.ajax({
					url : "getItems",
					data : {"type": "other"},
					method : "POST",
					success : function(data){
						temp = data;
						$("div #itemdiv a, div #itemdiv br").remove();
						$("div #itemdiv").append("<br>");
						for(var i=0; i<data.length; i++){
							$("div #itemdiv").append("<a href='#ownerdiv' data-toggle='pill' id='" + data[i].id + "'>" + data[i].itemName + "</a><br>");
						}
						$('a').click(clickedana);
					}
				});
			});
			
			function clickedana(){
				var a;
				console.log($(this).attr("id"));
				$.ajax({
					url : "getOwner",
					data : {"id": $(this).attr("id")},
					method : "POST",
					success : function(data){
						$("div #ownerdiv h5, div #ownerdiv br, div #ownerdiv form").remove();
						$("div #ownerdiv").append("<br>");
						$("div #ownerdiv").append("<form action='OwnerServlet' method='POST'> <h5>"
								+ data.firstname + "&nbsp" +data.lastname
								+ "<br><input type='hidden' id='ownerinput' name='owner' value='" + data.username + "' /><br>"
								+ data.gender + "<br>" + data.college +", " + data.idnum + "<br></h5>"
								+ "<input type='submit' class='btn btn-md' value='Go to Owner' /></form><br><br>"
							//+ "<button type='button' class='btn btn-md' data-toggle='modal' data-target=''#modalCompose'>Contact Owner</button>"
							);
					}
				});
			}
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
		
		<div class="container-fluid" id="pagepic">
		</div>
		
		
		<div class="container">
			<ul class="nav nav-pills nav-stacked col-md-2">
				<span id="header">Categories</span>
				<li id="books"><a href="#itemdiv" class="bks" data-toggle="pill"">Books</a></li>
				<li id="calcus"><a href="#itemdiv" class="cal" data-toggle="pill">Calculators</a></li>
				<li id="nbks"><a href="#itemdiv" class="nbk" data-toggle="pill">Notebooks</a></li>
				<li id="ssss"><a href="#itemdiv" class="sss" data-toggle="pill">School Supplies</a></li>
				<li id="umbs"><a href="#itemdiv" class="umb" data-toggle="pill">Umbrellas</a></li>
				<li id="usbs"><a href="#itemdiv" class="usb" data-toggle="pill">USBs and Cables</a></li>
				<li id="oths"><a href="#itemdiv" class="oth" data-toggle="pill">Others</a></li>
			</ul>
			<div class="tab-content col-md-5">
				<div class="tab-pane" id="itemdiv">
					<span id="header">List of Items</span><br>
				</div>
			</div>
			
			<div class="tab-content col-md-5">
				<div class="tab-pane" id="ownerdiv">
					<span id="header">Owner</span><br>
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