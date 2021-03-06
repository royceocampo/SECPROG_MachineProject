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
			
			#login {
				padding-bottom: 340px;
			}
			
			#signup {
				padding-bottom: 49px;
			}
			
			label {
				color: #CFCFCF;
			}
			</style>
			<script>
			function validate(form){
				str = form.email.value;
				if(str.search("@dlsu.edu.ph") != -1){
					if (form.password.value == form.vpassword.value) {
						return true;
				    }
				    else{
					  	alert("Password and verified password do not match.");
				        return false;
				    }
		    	}
		    	else{
		    		alert("Only a DLSU email address is accepted.");
		    		return false;
		    	}
			}
			</script>
	</head>
	
	<body>
		<div class="container-fluid" id="main">
			<div class="container" id="sitename">
				Foobar Bookshop
			</div>
			<div class="col-sm-6 col-sm-offset-3" id="info">
				<ul class="nav nav-pills nav-justified">
					<li class="active"><a href="#login" data-toggle="tab">LOG-IN</a></li>
					<li><a href="#signup" data-toggle="tab">SIGN-UP</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane fade in active"  id="login">
						<form action="login" method="POST" class="form-loginin">
							<br>
							<label for="inputUsername">Username</label>
							<input type="text" id="inputUsername" class="form-control" name="username" placeholder="Username" required autofocus>
							<label for="inputPassword">Password</label>
							<input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
							<div class="checkbox">
								<label>
									<input type="checkbox" value="remember-me" name="remember"> Remember me
								</label>
							</div>
							<input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign in" />
						</form>
					</div>
					<div class="tab-pane fade"  id="signup">
						<form name="signupForm" class="form-signup" action="SignupServlet" method="POST" onsubmit="return validate(this);">
							<br>
							<label for="inputUsername">Username</label>
							<input type="text" id="inputUsername" class="form-control" name="username" placeholder="Username" required autofocus>
							<label for="inputFirstName">First Name</label>
							<input type="text" id="inputFirstName" class="form-control" name="firstname" placeholder="First Name" required>
							<label for="inputLastName">Last Name</label>
							<input type="text" id="inputLastName" class="form-control" name="lastname" placeholder="Last Name" required>
							<div class="radiogroup">
								<label>Gender:  </label>
								<input type="radio" name="gender" value="Female" id="F" />
								<label id="gender" for="F"> Female</label>
								<input type="radio" name="gender" value="Male" id="M" />
								<label id="gender" for="M"> Male</label> <br>
							</div>
							<!-- <label id="bday">Birthday:  </label>
							<input type="date" name="birthday" /><br> -->
							<label for="inputEmail">Email</label>
							<input type="email" id="inputEmail" class="form-control" name="email" placeholder="DLSU Email" required>
							<label for="inputPassword">Password</label>
							<input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
							<label for="inputVerfiyPassword">Verify Password</label>
							<input type="password" id="inputVerifyPassword" class="form-control" name="vpassword" placeholder="Password" required>
							<label>College :</label>
								<select name="colleges">
									<option value="cla">CLA</option>
									<option value="ccs">CCS</option>
									<option value="ced">CED</option>
									<option value="cob">COB</option>
									<option value="coe">COE</option>
									<option value="cos">COS</option>
									<option value="soe">SOE</option>
									<option value="col">COL</option>
								</select>
							<label>ID :</label><input type="number" min="100" max="114" title="Format: 3 digits" name="idNum" placeholder="ID"/><br>
							<input class="btn btn-lg btn-primary btn-block" type="submit" value="Register" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>