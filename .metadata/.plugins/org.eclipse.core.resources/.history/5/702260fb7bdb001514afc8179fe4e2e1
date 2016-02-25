<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		
		.carousel {
			margin-top: 5%;
			margin-bottom: 5%;
			width: 100%;
		}
		.carousel img {
			align: center;
			width: 100%;
			height: 450px;
			max-height: 450px;
		}
		.carousel-inner > .item > img {
			margin: 0 auto;
		}
		
		.row {
			margin-left: 0px;
			margin-right: 0px;
			margin-top: 0px;
			padding-top: 0px;
		}
		.col-lg-6 {
			height: 100%;
		}
		.col-lg-6 img {
			width: 100%;
			height: 80%;
		}
		.well {
			width: 100%;
			border: 0px;
			padding: 5%;
			box-shadow: none;
			background-color: white;
			background-image: none;
			text-align: justify;
			vertical-align: 0;
		}
		
		body, .carousel-caption h3{
			//background-color: #FFF5C3;
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
		
		<div class="container">
			<div class="row">
				<div id="slider" class="carousel slide" data-ride="carousel" data-interval="3000" data-pause="hover">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
					<li data-target="#slider" data-slide-to="0" class="active"></li>
					<li data-target="#slider" data-slide-to="1"></li>
					<li data-target="#slider" data-slide-to="2"></li>
					<li data-target="#slider" data-slide-to="3"></li>
					<li data-target="#slider" data-slide-to="4"></li>
				  </ol>
				 
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner">
					<div class="item active">
					  <img src="Images/yellow-umbrella.jpg" alt="...">
					  <div class="carousel-caption">
						  <h3>Is it raining or too hot outside?<br>
						  Borrow an umbrella!</h3>
					  </div>
					</div>
					<div class="item">
					  <img src="Images/book-leaf.jpg" alt="...">
					  <div class="carousel-caption">
						  <h3>Need to buy a book?<br>
						  Borrow a book!</h3>
					  </div>
					</div>
					<div class="item">
					  <img src="Images/pocket-wifi.jpg" alt="...">
					  <div class="carousel-caption">
						  <h3>Wi-fi is too slow?<br>
						  Borrow a pocket wifi!</h3>
					  </div>
					</div>
					<div class="item">
					  <img src="Images/pen-note.jpg" alt="...">
					  <div class="carousel-caption">
						  <h3>Lost your pen?<br>
						  Borrow a pen!</h3>
					  </div>
					</div>
					<div class="item">
					  <img src="Images/notes.jpg" alt="...">
					  <div class="carousel-caption">
						  <h3>Want to have a copy of some old notes?<br>
						  Borrow a notebook!</h3>
					  </div>
					</div>
				  </div>
				 
				  <!-- Controls -->
				  <a class="left carousel-control" href="#slider" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				  </a>
				  <a class="right carousel-control" href="#slider" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				  </a>
				</div> <!-- Carousel -->
			</div>
		</div>
		
		<div class="row" >
			<div class="col-lg-6">
				<div class="well">
					<h1>Borrow Something</h1>
					<p>Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
				</div>
			</div>
			<div class="col-lg-6">
					<img src="Images/shake.jpg" />
			</div>
		</div>
		
		<hr width="80%">
		
		<div class="row">
			<div class="clearfix hidden-md hidden-lg"> </div>
			<div class="col-lg-6">
				<img src="Images/bg.png" />
			</div>
			<div class="col-lg-6">
				<div class="well">
					<h1>Lend Something</h1>
					<p>Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
					</p>
				</div>
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