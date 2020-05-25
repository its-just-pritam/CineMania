<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>CineMania</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
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
					<li><a href="CMmanual.pdf" target="_blank">Manual</a></li>
					<li><a  id="login-checker" href="./ProfileServlet">Profile</a></li>
					<li><a href="#">Home</a></li>
				</ul>
				
			</nav>
		</div>
	</header>
	<div class="tm-container">
		
		<section>
			<img id="tm-home-illu" src="images/home.png" width="1200px">
		</section>

		<div class="tm-button">
		<a href="game_mode.jsp">
			<!--<form action="link" method="post">-->
				<button type="button" value="GAME MODE" class="btn btn1">
					GAME MODE
				</button>
			<!--</form>-->
		</a>
		</div>

		<article class="tm-intro">
			<h1>Back in the 90's</h1>

			<p>
				Remember the games you played back when you were still a kid?<br>
			
				Remember the crowd waiting to absorb the cinematic moments inside the Theatre?<br>
			
				Remember the movies, shows and anime that shaped and enriched your childhood?<br>
			</p>

			<h1>Guess the movie !</h1>

			<p>
				Now CineMania brings you a chance to experience the good old days in an era ruled by the Internet.
				Take a break from your busy schedule and monotonous lifecycle, because beyond this page lies renaissance of Cinema.<br><br>

				Muster your knowledge of enntertainment, documentary, biography, literature, art and many more genres. Fill up the voids occupying those cherished awareness in your memories along with others. Because you are what you oveserve, recollect and inspire.<br><br>

				Read the Game Manual for a better grasp.<br><br>
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