<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>CineMania</title>
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.png">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="https://fonts.googleapis.com/css?family=Dosis:800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Varela+Round&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
</head>
<body>
	<header class="tm-header">
		<div class="tm-container">
		<img id="tm-logo" src="images/logo.png" height="55">
			<nav class="tm-nav">
				<ul>
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="CMmanual.pdf" target="_blank">Manual</a></li>
					<li><a id="login-checker" href="./ProfileServlet">Profile</a></li>
					<li><a href="index.jsp">Home</a></li>
				</ul>
				<p id="logo-name">CineMania</p>
			</nav>
		</div>
	</header>
	<div class="tm-container">

		<!--<section>
			<img id="tm-home-illu" src="images/home.png" width="1200px">
		</section>-->

		<div class="tm-button_1">
			<a href="bot.jsp">

				<button type="button" value="GAME MODE" class="btn btn1">
					PLAY WITH BOT
				</button>
				
			</a>
			<a href="http://localhost:8086/clientPath/match.html">

				<button type="button" value="FIND A MATCH" class="btn btn1" id="find-a-match">
					FIND A MATCH
				</button>
				
			</a>
			<!--</form>-->
		</div>

		<article class="tm-intro">
			<h1>Play with Bot</h1>

			<p>
				If you are a beginner, you can condition your experience with the bot server.<br>
			
				Points gained in this mode won't affect your profile ranking.<br>
			
			</p>

			<h1>Find a Match</h1>

			<p>
				Let the server automatically match you with another random player against whom you can throw and face challenges for certain rounds.<br><br>

				Points will be scored according to your performance.<br><br>

				Points gained in this mode will determine your profile status and new features shall be unlocked according to the score.<br><br>
			</p>

		</article>

		<aside>
		
		</aside>
		
	</div>


	<footer class="tm-footer">
		<div align="center">
			<audio controls loop>
			  <source src="midnight_aura.mp3" type="audio/mpeg">
			</audio>
		</div>
		&copy; Copyright Pritam Mallick 2020
	</footer>

	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/test.js"></script>

	
</body>
</html>