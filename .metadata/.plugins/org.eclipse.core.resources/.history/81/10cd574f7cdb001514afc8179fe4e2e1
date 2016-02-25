<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

		<title>Borrow Something | Lend</title>
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
		
		button#categories, ul#categories {
			width: 100%;
		}
		#categories {
			background-color: white;
		}
		
		#pagepic {
			background-image: url("Images/lend.png");
			background-repeat: none;
			background-position: center;
			background-size: cover;
			padding: 120px;
		}
		
		span#header {
			font-size: 2em;
			line-height: 2em;
		}
		</style>
		
		<script>
		$(".dropdown-menu li a").click(function(){
			var selText = $(this).text();
			$(this).parents('.btn-group').find('.dropdown-toggle').jsp(selText+' <span class="caret"></span>');
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
								<li id="menu"><a href="MessageBoxServlet">Messages</a></li>
								<li id="menu"><a href="ArchiveServlet">Archive</a></li>
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
		
		<!-- 
		<div class="container">		
			<div class="col-md-3">
				<div class="dropdown">
					<img src="Images/addphoto.png" /><br>
					<button class="btn btn-default dropdown-toggle" type="button" id="categories" data-toggle="dropdown">
						Categories<span class="caret"></span></button>
					<ul class="dropdown-menu" id="categories">
						<li id="categories"><a href="#addBook" data-value="Books" data-toggle="collapse">Books</a></li>
						<li id="categories"><a href="#addCalculator" data-toggle="collapse">Calculators</a></li>
						<li id="categories"><a href="#addNotebook" data-toggle="collapse">Notebooks</a></li>
						<li id="categories"><a href="#addSupplies" data-toggle="collapse">School Supplies</a></li>
						<li id="categories"><a href="#addUmbrella" data-toggle="collapse">Umbrellas</a></li>
						<li id="categories"><a href="#addUsb" data-toggle="collapse">USBs and Cables</a></li>
						<li id="categories"><a href="#addOther" data-toggle="collapse">Others</a></li>
					</ul>
				</div>
			</div>
			<div class="collapse col-md-9" id="addBook">
				<form action="LendBookServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item Name</label>
						<input type="text" class="form-control" name="itemName" placeholder="The Great Gatsby 1925">
					</div>
					<div class="form-group">
						<label for="title">Title</label>
						<input type="text" class="form-control" name="title" placeholder="The Great Gatsby">
					</div>
					<div class="form-group">
						<label for="author">Author</label>
						<input type="text" class="form-control" name="author" placeholder="F. Scott Fitzgerald">
					</div>
					<div class="form-group">
						<label for="year">Publication Year</label>
						<input type="year" class="form-control" name="year" placeholder="1925">
					</div>
					<div class="form-group">
						<label for="language">Language</label>
						<input type="text" class="form-control" name="language" placeholder="English">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
			
			<div class="collapse col-md-9" id="addCalculator">
				<form action="LendCalculatorServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item Name</label>
						<input type="text" class="form-control" name="itemName" placeholder="Casio Scientific Calculator">
					</div>
					<div class="form-group">
						<label for="brand">Brand</label>
						<input type="text" class="form-control" name="brand" placeholder="Casio">
					</div>
					<div class="form-group">
						<label for="type">Type</label>
						<input type="text" class="form-control" name="type" placeholder="Scientific">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
			
			<div class="collapse col-md-9" id="addNotebook">
				<form action="LendNotebookServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item Name</label>
						<input type="text" class="form-control" name="itemName" placeholder="WEB-PRG notes">
					</div>
					<div class="form-group">
						<label for="subject">Subject</label>
						<input type="text" class="form-control" name="subject" placeholder="WEB-PRG">
					</div>
					<div class="form-group">
						<label for="prof">Professor</label>
						<input type="text" class="form-control" name="prof" placeholder="Ms. Courtney Ngo">
					</div>
					<div class="form-group">
						<label for="ytt">Year and Term Taken</label>
						<input type="year" class="form-control" name="ytt" placeholder="AY 14-15 Term 3">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
			
			<div class="collapse col-md-9" id="addSupplies">
				<form action="LendSchoolSuppliesServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item Name</label>
						<input type="text" class="form-control" name="itemName" placeholder="Black pen">
					</div>
					<div class="form-group">
						<label for="brand">Brand</label>
						<input type="text" class="form-control" name="brand" placeholder="Pilot G-tec">
					</div>
					<div class="form-group">
						<label for="color">Color</label>
						<input type="text" class="form-control" name="color" placeholder="Black">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
			
			<div class="collapse col-md-9" id="addUmbrella">
				<form action="LendUmbrellaServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item Name</label>
						<input type="text" class="form-control" name="itemName" placeholder="Yellow umbrella">
					</div>
					<div class="form-group">
						<label for="color">Color</label>
						<input type="text" class="form-control" name="color" placeholder="Yellow">
					</div>
					<div class="form-group">
						<label for="type">Type</label>
						<input type="text" class="form-control" name="type" placeholder="Automatic">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
			
			<div class="collapse col-md-9" id="addUsb">
				<form action="LendUSBServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item Name</label>
						<input type="text" class="form-control" name="itemName" placeholder="32gb USB">
					</div>
					<div class="form-group">
						<label for="brand">Brand</label>
						<input type="text" class="form-control" name="brand" placeholder="Sandisk">
					</div>
					<div class="form-group">
						<label for="size">Size</label>
						<input type="text" class="form-control" name="size" placeholder="32gb">
					</div>
					<div class="form-group">
						<label for="type">Type</label>
						<input type="text" class="form-control" name="type" placeholder="type ?">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
			
			<div class="collapse col-md-9" id="addOther">
				<form action="LendOtherServlet" method="POST">
					<div class="form-group">
						<label for="itemName">Item</label>
						<input type="text" class="form-control" name="itemName" placeholder="Huawei Pocket Wifi">
					</div>
					<div class="form-group">
						<label for="brand">Brand</label>
						<input type="text" class="form-control" name="brand" placeholder="Huawei">
					</div>
					<div class="form-group">
						<label for="desc">Description</label>
						<input type="text" class="form-control" name="desc" placeholder="Pocket Wifi">
					</div>
					<input class="btn btn-default" type="submit" value="Submit" />
				</form>
			</div>
		</div>
		-->
		
		<div class="container">
			<ul class="nav nav-pills nav-stacked col-md-3">
				<span id="header">Categories</span>
				<li id="categories"><a href="#addBook" data-value="Books" data-toggle="pill">Books</a></li>
				<li id="categories"><a href="#addCalculator" data-toggle="pill">Calculators</a></li>
				<li id="categories"><a href="#addNotebook" data-toggle="pill">Notebooks</a></li>
				<li id="categories"><a href="#addSupplies" data-toggle="pill">School Supplies</a></li>
				<li id="categories"><a href="#addUmbrella" data-toggle="pill">Umbrellas</a></li>
				<li id="categories"><a href="#addUsb" data-toggle="pill">USBs and Cables</a></li>
				<li id="categories"><a href="#addOther" data-toggle="pill">Others</a></li>
			</ul>
			
			<div class="tab-content col-md-9">
			
				<span id="header"> &nbsp </span>
				<div class="tab-pane" id="addBook">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendBook" method="POST">
							<div class="form-group">
								<label for="itemName">Item Name</label>
								<input type="text" class="form-control" name="itemName" placeholder="The Great Gatsby 1925">
							</div>
							<div class="form-group">
								<label for="title">Title</label>
								<input type="text" class="form-control" name="title" placeholder="The Great Gatsby">
							</div>
							<div class="form-group">
								<label for="author">Author</label>
								<input type="text" class="form-control" name="author" placeholder="F. Scott Fitzgerald">
							</div>
							<div class="form-group">
								<label for="year">Publication Year</label>
								<input type="year" class="form-control" name="year" placeholder="1925">
							</div>
							<div class="form-group">
								<label for="language">Language</label>
								<input type="text" class="form-control" name="language" placeholder="English">
							</div>
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
				</div>
				<div class="tab-pane" id="addCalculator">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendCalculator" method="POST">
							<div class="form-group">
								<label for="itemName">Item Name</label>
								<input type="text" class="form-control" name="itemName" placeholder="Casio Scientific Calculator">
							</div>
							<div class="form-group">
								<label for="brand">Brand</label>
								<input type="text" class="form-control" name="brand" placeholder="Casio">
							</div>
							<!-- <div class="form-group">
								<label for="type">Type</label>
								<input type="text" class="form-control" name="type" placeholder="Scientific">
							</div> -->
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
				</div>
				<div class="tab-pane" id="addNotebook">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendNotebook" method="POST">
							<div class="form-group">
								<label for="itemName">Item Name</label>
								<input type="text" class="form-control" name="itemName" placeholder="WEB-PRG notes">
							</div>
							<div class="form-group">
								<label for="subject">Subject</label>
								<input type="text" class="form-control" name="subject" placeholder="WEB-PRG">
							</div>
							<div class="form-group">
								<label for="prof">Professor</label>
								<input type="text" class="form-control" name="prof" placeholder="Ms. Courtney Ngo">
							</div>
							<div class="form-group">
								<label for="ytt">Year and Term Taken</label>
								<input type="year" class="form-control" name="ytt" placeholder="AY 14-15 Term 3">
							</div>
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
				</div>
				<div class="tab-pane" id="addSupplies">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendSchoolSupplies" method="POST">
							<div class="form-group">
								<label for="itemName">Item Name</label>
								<input type="text" class="form-control" name="itemName" placeholder="Black pen">
							</div>
							<div class="form-group">
								<label for="brand">Brand</label>
								<input type="text" class="form-control" name="brand" placeholder="Pilot G-tec">
							</div>
							<div class="form-group">
								<label for="color">Color</label>
								<input type="text" class="form-control" name="color" placeholder="Black">
							</div>
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
				</div>
				<div class="tab-pane" id="addUmbrella">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendUmbrella" method="POST">
							<div class="form-group">
								<label for="itemName">Item Name</label>
								<input type="text" class="form-control" name="itemName" placeholder="Yellow umbrella">
							</div>
							<div class="form-group">
								<label for="color">Color</label>
								<input type="text" class="form-control" name="color" placeholder="Yellow">
							</div>
							<!-- <div class="form-group">
								<label for="type">Type</label>
								<input type="text" class="form-control" name="type" placeholder="Automatic">
							</div> -->
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
				</div>
				<div class="tab-pane" id="addUsb">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendUSB" method="POST">
							<div class="form-group">
								<label for="itemName">Item Name</label>
								<input type="text" class="form-control" name="itemName" placeholder="32gb USB">
							</div>
							<div class="form-group">
								<label for="brand">Brand</label>
								<input type="text" class="form-control" name="brand" placeholder="Sandisk">
							</div>
							<div class="form-group">
								<label for="size">Size</label>
								<input type="text" class="form-control" name="size" placeholder="32gb">
							</div>
							<!-- <div class="form-group">
								<label for="type">Type</label>
								<input type="text" class="form-control" name="type" placeholder="type ?">
							</div> -->
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
				</div>
				<div class="tab-pane" id="addOther">
					<div class="tab-content col-md-4">
						<img src="Images/addphoto.png" /><br>
					</div>
					<div class="tab-content col-md-8">
						<form action="LendOtherServlet" method="POST">
							<div class="form-group">
								<label for="itemName">Item</label>
								<input type="text" class="form-control" name="itemName" placeholder="Huawei Pocket Wifi">
							</div>
							<div class="form-group">
								<label for="brand">Brand</label>
								<input type="text" class="form-control" name="brand" placeholder="Huawei">
							</div>
							<div class="form-group">
								<label for="desc">Description</label>
								<input type="text" class="form-control" name="desc" placeholder="Pocket Wifi">
							</div>
							<input class="btn btn-default" type="submit" value="Submit" />
						</form>
					</div>
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