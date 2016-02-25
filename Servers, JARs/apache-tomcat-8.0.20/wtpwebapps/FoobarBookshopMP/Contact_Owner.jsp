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
		
		<title>Foobar Bookshop | Contact Owner</title>
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
	
		<title>Foobar Bookshop | Contact Owner</title>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
		
		<style>
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
			
			div.header{
				width: 95%;
				margin: auto;
				height: 30%;
				background-color: #585858;
			}
			
			h1 {
				float:left;
				width: 550px;
				padding: 10px;
				background-color: #585858;
				font-size: 60px;
				color: white;
				font-family:Trebuchet MS;
				text-align: center;
			}
							
			div img#banner{
				background-color: #585858;
				float: right;
				height: 150px;
			}
				
			div.bar ul{
				clear: right;
				background-color: #585858;
				color: white;
				float: right;
				width: 586px;
				margin-top: 0;
				margin-bottom: 0px;
				text-align: right;
			}
			div.bar ul li {
				display: inline;
				padding-right: 5px;
				padding-left: 5px;
			}
			
			div.searchbar {
				float: right;
			}
			div.searchbar input {
				padding: 5px;
				background-image: url("magnifier.png");
				background-size: 20px 20px;
				background-repeat: no-repeat;
				background-position: right;
			}
			
			a:visited {
				color: #99FF66;
			}

			a:hover {
				color: #99CCFF;
			}

			a:active {
				color: #001A66;
			}
			
			div.profile{
				border-style: double;
				border-color:white;
				border-width: 10px;
			}
			div.profile{
				border-style: double;
				border-color:white;
				border-width: 10px;
				clear: both;
				float: left;
				overflow: auto;
				margin-left: 2.5%;
				margin-top: 10px;
				background-color: #00A37A;
				width: auto;
			}
			div.profile img#dp {
				float:left;
				height: 125px;
				margin-top: 15px;
			}
			div.profile img#ratings {
				width: 120px;
				height: 30px;
			}
			div.profile h3 {
				float:left;
				width: auto;
				background-color: #A3FFD1;
				padding: 5px;
				margin-right: 10px;
				font-size: 100%;
				font-weight: normal;
			}
			
			div.message{
				float: right;
				background-color: #00B88A;
				font-family: arial;

				width: 67%;
				height: 68.5%;
				float: left;
				margin-top: 10px;
			}
			div.message textarea {
				width: 100%;
				height: 90%;
				margin-bottom: 2%;
			}
			
			div.rate {
				clear: both;
				float: left;
				overflow: auto;
				margin-left: 2.5%;
				margin-top: 10px;
				width: auto;
				background-color: #00A37A;
				color:black;
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
		</style>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		
		<script>
		$(document).ready( function() {
			$("#textarea").bind("enterKey",function(e){
					window.location.href = "Search.html";
				});
				
				$("#textarea").keyup(function(e){
					if(e.keyCode == 13)
					{
					  $(this).trigger("enterKey");
					}
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
					<a href="Home.html" class="navbar-brand">Foobar Bookshop</a>
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
							<a class="dropdown-toggle" data-toggle="dropdown">Jane<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="ProfileServlet">My Profile</a></li>
								<li><a href="Messages.html">Messages</a></li>
								<li><a href="ArchiveServlet">Archive</a></li>
								<li><a href="LogoutServlet">Log Out</a></li>
							</ul>
						</li>
						<li><a href="Borrow.html">Borrow</a></li>
						<li><a href="Lend.html">Lend</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="profile">
			<a href="Owner_Profile.html"><img id="dp" src="dp.png" /></a>
			<h3>John Smith<br>
			<div class="acidjs-rating-stars acidjs-rating-disabled">
				<form>
					<input disabled="disabled" type="radio" name="group-3" id="group-3-0" value="5" /><label for="group-3-0"></label><!--
					--><input disabled="disabled" type="radio" checked="checked" name="group-3" id="group-3-1" value="4" /><label for="group-3-1"></label><!--
					--><input disabled="disabled" type="radio" name="group-3" id="group-3-2" value="3" /><label for="group-3-2"></label><!--
					--><input disabled="disabled" type="radio" name="group-3" id="group-3-3" value="2" /><label for="group-3-3"></label><!--
					--><input disabled="disabled" type="radio" name="group-3" id="group-3-4"  value="1" /><label for="group-3-4"></label>
				</form>
			</div><br>
			CCS<br>
			Male, 19 <br>
			john_smith@dlsu.edu.ph
			</h3>
		</div>
		
		<div class="message">
			<form>
				<textarea id="msgbox" col="800" rows="20" maxlength="250">
					Enter your message here...
				</textarea>
				<input type="button" value="Send"></input>
			</form>
		</div>
	</body>
</html>