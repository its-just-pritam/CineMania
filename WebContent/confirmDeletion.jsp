<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>CineMania</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="file:///C:/Users/hp/Desktop/CineMania/fontawesome-free-5.13.0-web/css/all.css">
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.png">
	<link href="https://fonts.googleapis.com/css?family=Dosis:800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Varela+Round&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
</head>
<body>
	<header class="tm-header">
		<div class="tm-container">
		<img id="tm-logo" src="images/logo.png" height="55">
		
			<nav class="tm-nav">
				<section id="logo-name">CineMania</section>
				<ul>
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="#">Manual</a></li>
					<li><a id="login-checker" href="./ProfileServlet">Profile</a></li>
					<li><a href="index.jsp">Home</a></li>
				</ul>
				
			</nav>
		</div>
	</header>
	<div class="tm-container">


		<h2 id="confirm-delete-msg">Are you sure you want to delete your profile completely? Your data shall be removed completely and changes would be permanent !</h2>

		<div id="confirm-button">
			<form action="DeleteProfile" method="post">
				<input type="submit" name="submit" value="CONFIRM" class="profile-btn">
			</form>
		</div>
		
	</div>


	<footer class="tm-footer">
		&copy; Copyright Pritam Mallick 2020
	</footer>

	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/test.js"></script>

</body>
</html>