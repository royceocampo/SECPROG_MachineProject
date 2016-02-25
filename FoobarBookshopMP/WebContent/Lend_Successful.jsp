<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<!-- Bootstrap: Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		
		<!-- Bootstrap: Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<meta charset="utf-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Borrow Something | Home</title>		
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>
		
		<style type="text/css">
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
		
		body {
			font-family: 'Raleway', sans-serif
		}
		
		.navbar-inverse .navbar-brand, .navbar-inverse .navbar-brand:hover {
			color: #A7FCDB;
			font-family: 'Carter One', cursive;
		}
		
		#searchbar > *{
			display: inline-block;
		}
		
		h1 {
			font-family: 'Kite One', sans-serif;
		}
		
		#centerdiv {
			padding: 15%;
			text-align: center;
		}
		
		a:visited, a:hover {
			color: #FFFFFF;
			text-decoration: none;
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
					<a href="" class="navbar-brand">Borrow Something</a>
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
		
		<div class="row">
			<div class="container" id="centerdiv">
				<h1>Thank you for lending your stuff!</h1> <br>
				<button class="btn btn-primary"><a href="Lend.jsp">Lend another item</a></button>
			</div>
		</div>
		
		<footer>
			<div class="container">
				<hr>
				<p>
					&copy; 2015 Team Lego
				</p>
			</div>
		</footer>
	</body>
</html>