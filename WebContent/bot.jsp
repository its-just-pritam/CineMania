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
	<header class="bot-header">

		<h1>CineMania</h1>
		<h2>BOT MATCH</h2>
		<span id="tm-chances">CHANCES LEFT : </span>
		<span id="tm-time">TIME LEFT : </span>
		
	</header>
	
	<div class="bot-container">
		
		<div class="underScore">---</div>
		<div class="rightGuess">Right Guess</div>
		<div class="wrongGuess">Wrong Guess</div>
		
		<div id="movie-data"></div>

		<div class="tm-button">
		<a href="game_mode.jsp">
			<!--<form action="link" method="post">-->
				<button type="button" value="QUIT GAME" class="btn btn1">
					QUIT GAME
				</button>
			<!--</form>-->
		</a>
		</div>
		

	</div>


	<footer class="tm-footer">
		<div align="center">
			<audio controls autoplay loop>
			  <source src="midnight_aura.mp3" type="audio/mpeg">
			</audio>
		</div>
		&copy; Copyright Pritam Mallick 2020
	</footer>

	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/test.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script type="text/javascript" src="js/bot.js"></script>
	
</body>
</html>