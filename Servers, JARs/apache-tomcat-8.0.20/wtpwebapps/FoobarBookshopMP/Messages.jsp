<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
		<meta charset="utf-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Borrow Something | Messages</title>
		<link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
		
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
		
		.conversation-wrap {
			box-shadow: -2px 0 3px #ddd;
			padding:0;
			max-height: 400px;
			overflow: auto;
		}
		.conversation {
			padding:5px;
			border-bottom:1px solid #ddd;
			margin:0;

		}
		.message-wrap {
			box-shadow: 0 0 3px #ddd;
			padding:0;
		}
		.msg {
			padding:5px;
			margin:0;
		}
		.msg-wrap {
			padding:10px;
			max-height: 400px;
			overflow: auto;
		}
		.time {
			color:#bfbfbf;
		}
		.send-wrap {
			border-top: 1px solid #eee;
			border-bottom: 1px solid #eee;
			padding:10px;
			/*background: #f8f8f8;*/
		}
		.send-message {
			resize: none;
		}
		.highlight {
			background-color: #f7f7f9;
			border: 1px solid #e1e1e8;
		}
		.send-message-btn {
			border-top-left-radius: 0;
			border-top-right-radius: 0;
			border-bottom-left-radius: 0;

			border-bottom-right-radius: 0;
		}
		.btn-panel {
			background: #f7f7f9;
		}
		.btn-panel .btn {
			color:#b8b8b8;
			transition: 0.2s all ease-in-out;
		}
		.btn-panel .btn:hover {
			color:#666;
			background: #f8f8f8;
		}
		.btn-panel .btn:active {
			background: #f8f8f8;
			box-shadow: 0 0 1px #ddd;
		}
		.btn-panel-conversation .btn,.btn-panel-msg .btn {
			background: #f8f8f8;
		}
		.btn-panel-conversation .btn:first-child {
			border-right: 1px solid #ddd;
		}
		.msg-wrap .media-heading {
			color:#003bb3;
			font-weight: 700;
		}
		.msg-date {
			background: none;
			text-align: center;
			color:#aaa;
			border:none;
			box-shadow: none;
			border-bottom: 1px solid #ddd;
		}
		body::-webkit-scrollbar {
			width: 12px;
		}
		::-webkit-scrollbar {
			width: 6px;
		}
		::-webkit-scrollbar-track {
			-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
		}
		::-webkit-scrollbar-thumb {
			background:#ddd; 
			-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
		}
		::-webkit-scrollbar-thumb:window-inactive {
			background: #ddd; 
		}
		
		button#compose {
			border: 0px;
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
		
<!-- 
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="btn-panel btn-panel-conversation">
					<button type="button" id="compose" class="btn btn-primary" data-toggle="modal" data-target="#modalCompose"><i class="fa fa-plus"></i>
						<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp Compose</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="conversation-wrap col-lg-3">
				<div class="media conversation">
					<a class="pull-left" href="#">
						<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 50px; height: 50px;" src="Images/Photo-1.jpg">
					</a>
					<div class="media-body">
						<h5 class="media-heading">John Smith</h5>
						<small>Lorem ipsum...</small>
					</div>
				</div>
				<div class="media conversation">
					<a class="pull-left" href="#">
						<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 50px; height: 50px;" src="Images/Photo-2.jpg">
					</a>
					<div class="media-body">
						<h5 class="media-heading">Mickey Mouse</h5>
						<small>Secondo sed...</small>
					</div>
				</div>
				<div class="media conversation">
					<a class="pull-left" href="#">
						<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 50px; height: 50px;" src="Images/Photo-3.jpg">
					</a>
					<div class="media-body">
						<h5 class="media-heading">Minnie Mouse</h5>
						<small>Thirdamuno, ipsum...</small>
					</div>
				</div>
			</div>

			<div class="message-wrap col-lg-8">
				<div class="msg-wrap">
					<div class="media msg ">
						<a class="pull-left" href="#">
							<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 32px; height: 32px;" src="Images/Photo-1.jpg">
						</a>
						<div class="media-body">
							<small class="pull-right time"><i class="fa fa-clock-o"></i> 12:10am</small>
							<h5 class="media-heading">John Smith</h5>
							<small class="col-lg-10">Location H-2, Ayojan Nagar, Near Gate-3, Near
								Shreyas Crossing Dharnidhar Derasar,
								Paldi, Ahmedabad 380007, Ahmedabad,
								India
								Phone 091 37 669307
								Email aapamdavad.district@gmail.com</small>
						</div>
					</div>
					<div class="media msg">
						<a class="pull-left" href="#">
							<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 32px; height: 32px;" src="Images/Photo-2.jpg">
						</a>
						<div class="media-body">
							<small class="pull-right time"><i class="fa fa-clock-o"></i> 12:10am</small>

							<h5 class="media-heading">Mickey Mouse</h5>
							<small class="col-lg-10">Arnab Goswami: "Some people close to Congress Party and close to the government had a #secret #meeting in a farmhouse in Maharashtra in which Anna Hazare send some representatives and they had a meeting in the discussed how to go about this all fast and how eventually this will end."</small>
						</div>
					</div>
					<div class="media msg">
						<a class="pull-left" href="#">
							<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 32px; height: 32px;" src="Images/Photo-3.jpg">
						</a>
						<div class="media-body">
							<small class="pull-right time"><i class="fa fa-clock-o"></i> 12:10am</small>

							<h5 class="media-heading">Minnie Mouse</h5>
							<small class="col-lg-10">Arnab Goswami: "Some people close to Congress Party and close to the government had a #secret #meeting in a farmhouse in Maharashtra in which Anna Hazare send some representatives and they had a meeting in the discussed how to go about this all fast and how eventually this will end."</small>
						</div>
					</div>

				<div class="send-wrap ">

					<textarea class="form-control send-message" rows="3" placeholder="Write a reply..."></textarea>


				</div>
				<div class="btn-panel">
					<a href="" class=" col-lg-3 btn   send-message-btn " role="button"><i class="fa fa-cloud-upload"></i> Add Files</a>
					<a href="" class=" col-lg-4 text-right btn   send-message-btn pull-right" role="button"><i class="fa fa-plus"></i> Send Message</a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="modalCompose">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Compose Message</h4>
			  </div>
			  <div class="modal-body">
				<form role="form" class="form-horizontal">
					<div class="form-group">
					  <label class="col-sm-2" for="inputTo">To</label>
					  <div class="col-sm-10"><input type="email" class="form-control" id="inputTo" placeholder="comma separated list of recipients"></div>
					</div>
					<div class="form-group">
					  <label class="col-sm-2" for="inputSubject">Subject</label>
					  <div class="col-sm-10"><input type="text" class="form-control" id="inputSubject" placeholder="subject"></div>
					</div>
					<div class="form-group">
					  <label class="col-sm-12" for="inputBody">Message</label>
					  <div class="col-sm-12"><textarea class="form-control" id="inputBody" rows="18"></textarea></div>
					</div>
				</form>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button> 
				<button type="button" class="btn btn-warning pull-left">Save Draft</button>
				<button type="button" class="btn btn-primary ">Send <i class="fa fa-arrow-circle-right fa-lg"></i></button>
				
			  </div>
			</div>
		  </div>
		</div>
-->

	<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
				<h4>Messages</h4>
				<p>
					<c:forEach var="current" items="${messages}" >
						<c:out value="${current.sender}"/>
						<c:out value="${current.subject}"/>
						<c:out value="${current.content}"/><br>
				 	</c:forEach>
				</p>
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