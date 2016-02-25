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
				
		<title>Foobar Bookshop</title>		
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		
		<style type="text/css">
			body{
				font-family: 'Raleway', sans-serif;
			}
			
			#main {
				background-image: url("Images/ci.jpg");
				background-repeat: none;
				background-position: center;
				background-size: cover;
			}
			
			#sitename {
				font-size: 80px;
				padding-top: 80px;
				padding-bottom: 50px;
				margin: auto;
				text-align: center;
				color: white;
				font-family: 'Carter One', cursive;
			}
			
			#message {
				color: white;
				font-size: 40px;
				text-align: center;
				padding-top: 100px;
				padding-bottom: 200px;
				margin: auto;
			}
			
			a {
				font-size: 30px;
				color: #33CCFF;
				
			}
			
			a:hover {
				color: #B8E6E6; 
			}
		</style>
</head>
<body>
	<div class="container-fluid" id="main">
			<div class="container" id="sitename">
				Foobar Bookshop
			</div>
			<div class="container" id="message">
				<%= session.getAttribute("err_msg") %>
				<br><br>
				<a href="Login.jsp">Back to login page</a>
			</div>
	</div>
</body>
</html>