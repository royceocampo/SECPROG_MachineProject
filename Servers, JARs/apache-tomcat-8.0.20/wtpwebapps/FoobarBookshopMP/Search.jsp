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
		
		<title>Foobar Bookshop | Search</title>
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
	
		<title>Foobar Bookshop | Search</title>
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
							
			div img{
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
			
			div.out {
				background-color: #40d3fd;
				width: 47.5%;
				height: 69%;
				margin-top: 10px;
				margin-left: 2.5%;
				float: left;
			}
			div.out h4 {
				color: #fff7d0;
				padding-top: 2%;
				text-indent: 2%;
			}
			div.out ul li {
				color: white;
				padding-left: 5%;
				line-height: 2.0;
			}
			
			div.ownerdiv {
				float: left;
				margin-top: 10px;
				background-color: #CC99CC;
				width: 47.5%;
				height: 69%;
			}
			div.ownerdiv div#details img {
				float: right;
				margin-top: 0px;
				margin-right: 0px;
				width: 40%;
				height: 60%;
			}
			div.ownerdiv div#details h4 {
				margin-top: 10px;
				margin-left: 3%;
			}
			div.ownerdiv div#details p {
				margin-left: 7%;
			}
			div.ownerdiv div#details button {
				float: right;
				margin-right: 2%;
				margin-bottom: 2%;
				text-align: center;
				padding: 10px 10px 10px 10px;
			}
		</style>
		
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		
		<script>
			$(document).ready( function() {
				$("div.ownerdiv div#details").hide();
				
				$("#book1").click(showdetail);
				
				function showdetail(){
					$("div.ownerdiv div#details").show();
				}
				
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
								<li><a href="Archive.html">Archive</a></li>
								<li><a href="Login.html">Log Out</a></li>
							</ul>
						</li>
						<li><a href="Borrow.html">Borrow</a></li>
						<li><a href="Lend.html">Lend</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="container">
		<div class="out">
			<h4> Search Results for "dummies"</h4>
			<ul type="none">
				<li id="book1"><a href="#details">Web Design for Dummies</a></li>
			</ul>
		</div>
		</div>
		
		
		<div class="container">
		<div class="ownerdiv">
			<div id="details">
				<img src="WDFD.jpg" />
				<h4>About the Owner</h4>
				<p>
					Owner: John Smith <br>
					CCS student <br>
					M, 19 <br>
				</p>
				<h4>About the Item</h4>
				<p>
					Title: Web Design for Dummies <br>
					Author: Lisa Lopuck <br>
				</p>
				<h4>Loan Period</h4>
				<p>
					Due date: April 20, 2015
				</p>
				<button type="button"><a href="Contact_Owner.html">Contact Owner</a></button>
			</div>
		</div>
		</div>
	</body>
</html>